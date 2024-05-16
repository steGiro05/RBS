"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { getLastValuesFromUrl } from "../../../util/getUrl";

const standardLinkClass =
  "block py-2 px-3 text-gray-900 bg-blue-700 rounded md:bg-transparent md:p-0 dark:text-white";
const underlinedLinkClass =
  "block py-2 px-3 text-gray-900 bg-blue-700 rounded md:bg-transparent md:p-0 dark:text-white underline";

const NavBar = ({ genres }) => {
  const path = usePathname();
  return (
    <>
      <div className="hidden w-full md:block md:w-auto" id="navbar-default">
        <ul className="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 rtl:space-x-reverse md:mt-0 md:border-0 md:bg-white">
          <li>
            <Link
              href="/protected/home"
              className={
                getLastValuesFromUrl(path, 1) === "home"
                  ? underlinedLinkClass
                  : standardLinkClass
              }
            >
              All
            </Link>
          </li>
          {genres?.map((item, index) => (
            <li key={index}>
              <Link
                href={`/protected/home/${item.id}`}
                className={
                  getLastValuesFromUrl(path, 2) === `home/${item.id}`
                    ? underlinedLinkClass
                    : standardLinkClass
                }
              >
                {item.name}
              </Link>
            </li>
          ))}
        </ul>
      </div>
    </>
  );
};

export default NavBar;
