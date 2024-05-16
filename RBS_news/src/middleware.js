export { default } from "next-auth/middleware";

export const config = { matcher: ["/protected/:path*"] };

/* import { NextResponse } from "next/server";

export function middleware(request) {
  console.log(request.cookies.get("currentUser")?.value);
  if (request.nextUrl.pathname.startsWith("/protected")) {
    return NextResponse.redirect(new URL("/", request.url));
  }

  return null;
}
 */
