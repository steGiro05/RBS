import Image from "next/image";
import Link from "next/link";
import NavBar from "./nav_bar";
import { formatDate } from "../../../util/getFormattedDate";
import { headers } from "next/headers";

const url = "http://localhost:3000/api/genres";

const fetchGenres = async () => {
  const response = await fetch(url, {
    method: "GET",
    headers: headers(),
  });
  if (!response.ok) return null;
  return response.json();
};

const Header = async () => {
  const today = formatDate(new Date());

  const genres = await fetchGenres();

  return (
    <>
      <nav className="bg-white dark:bg-gray-900 h-2/6 border-b">
        <div className="max-w-screen-xl flex flex-col items-center justify-between mx-auto p-4">
          <div className="flex w-full items-center justify-between space-x-3 rtl:space-x-reverse p-3 ">
            <div className="flex flex-row w-1/3 justify-start">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="#3b82f6"
                className="w-6 h-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M12 21a9.004 9.004 0 0 0 8.716-6.747M12 21a9.004 9.004 0 0 1-8.716-6.747M12 21c2.485 0 4.5-4.03 4.5-9S14.485 3 12 3m0 18c-2.485 0-4.5-4.03-4.5-9S9.515 3 12 3m0 0a8.997 8.997 0 0 1 7.843 4.582M12 3a8.997 8.997 0 0 0-7.843 4.582m15.686 0A11.953 11.953 0 0 1 12 10.5c-2.998 0-5.74-1.1-7.843-2.918m15.686 0A8.959 8.959 0 0 1 21 12c0 .778-.099 1.533-.284 2.253m0 0A17.919 17.919 0 0 1 12 16.5c-3.162 0-6.133-.815-8.716-2.247m0 0A9.015 9.015 0 0 1 3 12c0-1.605.42-3.113 1.157-4.418"
                />
              </svg>

              <p>{today}</p>
            </div>

            <div className="flex justify-center">
              {" "}
              {/* Aggiunto il wrapper con la classe "justify-center" */}
              <Link href={"/protected/home"}>
                <Image
                  src={`/RBSnews.png`}
                  alt="title"
                  width="120"
                  height="50"
                />
              </Link>
            </div>

            <div className="flex w-1/3 justify-end">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill="none"
                viewBox="0 0 24 24"
                strokeWidth={1.5}
                stroke="currentColor"
                className="w-6 h-6"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z"
                />
              </svg>

              <Link href="/protected/account">myAccount</Link>
            </div>
          </div>

          <NavBar genres={genres} />
        </div>
      </nav>
    </>
  );
};

export default Header;
