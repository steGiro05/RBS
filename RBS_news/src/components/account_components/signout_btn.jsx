"use client";

import { signOut } from "next-auth/react";

const SignOutBtn = () => {
  return (
    <button
      onClick={() => {
        signOut();
        console.log("signed out");
      }}
      className="bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded-md shadow-md transition duration-300 ease-in-out mr-4"
    >
      Logout
    </button>
  );
};

export default SignOutBtn;
