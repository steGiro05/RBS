import LoginForm from "@/components/auth_components/login_form"; // Utilizza la lettera maiuscola per LoginForm
import { getServerSession } from "next-auth";
import { redirect } from "next/navigation";
import Image from "next/image";

const dim = 350;

export default async function Home() {
  const session = await getServerSession();

  if (!!session) redirect("/protected/home");

  return (
    <>
      <div className="flex flex-row ">
        <div className="flex w-2/5 bg-primary items-center justify-center">
          <Image
            src={"/loginImg.png"}
            alt="Login Image"
            width={dim}
            height={dim}
          />
        </div>

        <LoginForm />
      </div>
    </>
  );
}
