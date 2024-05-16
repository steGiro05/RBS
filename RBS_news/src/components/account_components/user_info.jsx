"use client";

import { useSession } from "next-auth/react";
import Link from "next/link";
import SignOutBtn from "@/components/account_components/signout_btn";

const UserInfo = () => {
  const { data: session } = useSession();
  return (
    <div className="flex flex-col items-center justify-center h-auto w-full">
      <div className="bg-white p-6 rounded-lg shadow-md">
        <div className="mb-2">
          <span className="font-semibold">Username:</span>{" "}
          <span className="text-gray-800">{session?.user?.username}</span>
        </div>
        <div className="mb-2">
          <span className="font-semibold">Email:</span>{" "}
          <span className="text-gray-800">{session?.user?.email}</span>
        </div>
        <div className="mb-2">
          <span className="font-semibold">ID:</span>{" "}
          <span className="text-gray-800">{session?.user?.id}</span>
        </div>
      </div>
      <div className="flex flex-row mt-4">
        <SignOutBtn />

        <Link href={"/protected/new-article"}>
          {" "}
          {/* Rimossa la classe e l'attributo aggiuntivo */}
          <button className="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded-md shadow-md transition duration-300 ease-in-out">
            New Article
          </button>
        </Link>
      </div>
    </div>
  );
};

export default UserInfo;
