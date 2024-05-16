import util from "util";
import db from "@/../../util/db";

import NextAuth from "next-auth/next";
import CredentialsProvider from "next-auth/providers/credentials";
import bcrypt from "bcrypt";

const query = util.promisify(db.query).bind(db);

export const authOptions = {
  providers: [
    CredentialsProvider({
      name: "credentials",
      credentials: {},

      async authorize(credentials) {
        if (!credentials?.email || !credentials?.password) {
          return null;
        }
        let user = await query(`SELECT * FROM users WHERE email = ?`, [
          credentials.email,
        ]);
        user = user[0];

        if (!user) {
          user = await query(`SELECT * FROM users WHERE username = ?`, [
            credentials.email,
          ]);

          user = user[0];
          console.log(user);
        }
        if (!user) {
          return null;
        }

        console.log(user);
        if (user.hash) {
          // Confronta la password non hashata con la password hashata
          const match = await bcrypt.compare(credentials.password, user.hash);

          return match ? user : null;
        }
      },
    }),
  ],
  callbacks: {
    async jwt({ token, user, session }) {
      //pass in user id and username to the token
      if (user) {
        return {
          ...token,
          id: user.id,
          username: user.username,
          name: user.first_name + " " + user.last_name,
        };
      }
      return token;
    },
    async session({ session, token, user }) {
      //pass in user id and username to the token
      return {
        ...session,
        user: {
          ...session.user,
          id: token.id,
          username: token.username,
        },
      };
      return session;
    },
  },
  session: {
    strategy: "jwt",
  },
  secret: process.env.NEXTAUTH_SECRET,
  pages: {
    signIn: "/",
  },
};

const handler = NextAuth(authOptions);

export { handler as GET, handler as POST };
