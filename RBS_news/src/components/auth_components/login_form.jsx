"use client";

import { useForm } from "react-hook-form";
import Link from "next/link";
import { signIn } from "next-auth/react";
import { useRouter } from "next/navigation";
import { useState } from "react";
import Alert from "@mui/material/Alert";

const LoginForm = () => {
  const [showPW, setShowPW] = useState(false);
  const [alert, setAlert] = useState(null);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  const router = useRouter();

  const onSubmit = async (user) => {
    try {
      const res = await signIn("credentials", {
        email: user.email,
        password: user.password,
        redirect: false,
      });

      if (res.error) {
        setAlert({ severity: "error", text: "invalid Credentials" });

        return;
      }

      router.replace("/protected/home");
    } catch (error) {
      console.log(error);
    }
  };

  return (
    <>
      <div className="flex flex-col items-center justify-center min-h-screen  w-3/5">
        {alert && (
          <Alert
            variant="filled"
            severity={alert.severity}
            className="absolute top-10 "
          >
            {alert.text}
          </Alert>
        )}
        <h1 className="font-bold text-2xl">Log into your Account</h1>
        <form onSubmit={handleSubmit(onSubmit)} className="bg-white p-8 w-3/5">
          <div className="mb-4">
            <label htmlFor="email" className="block mb-2 text-gray-500">
              Username
            </label>
            <input
              placeholder="Enter your username/email here.."
              id="email"
              type="text"
              name="email"
              {...register("email", {
                required: true,
              })}
              className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
            />
            {errors.email && errors.email.type === "required" && (
              <p className="text-red-500 text-xs mt-1">Email is required.</p>
            )}
          </div>

          <div className="mb-4">
            <label
              htmlFor="password"
              className="block mb-2 font-semibold text-gray-500"
            >
              Password
            </label>
            <div className="flex items-center relative">
              <input
                placeholder="Enter your Password.."
                id="password"
                type={showPW ? "text" : "password"}
                name="password"
                {...register("password", {
                  required: true,
                  minLength: 6,
                })}
                className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
              />
              <button
                className="absolute right-3"
                type="button"
                onClick={(e) => {
                  e.preventDefault();

                  setShowPW((prev) => !prev);
                }}
              >
                {showPW ? (
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    strokeWidth={1.5}
                    stroke="gray"
                    className="w-6 h-6"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M3.98 8.223A10.477 10.477 0 0 0 1.934 12C3.226 16.338 7.244 19.5 12 19.5c.993 0 1.953-.138 2.863-.395M6.228 6.228A10.451 10.451 0 0 1 12 4.5c4.756 0 8.773 3.162 10.065 7.498a10.522 10.522 0 0 1-4.293 5.774M6.228 6.228 3 3m3.228 3.228 3.65 3.65m7.894 7.894L21 21m-3.228-3.228-3.65-3.65m0 0a3 3 0 1 0-4.243-4.243m4.242 4.242L9.88 9.88"
                    />
                  </svg>
                ) : (
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 24 24"
                    strokeWidth="1.5"
                    stroke="gray"
                    className="w-6 h-6"
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z"
                    />
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"
                    />
                  </svg>
                )}
              </button>
            </div>
            {errors.password && errors.password.type === "required" && (
              <p className="text-red-500 text-xs mt-1">Password is required.</p>
            )}
            {errors.password && errors.password.type === "minLength" && (
              <p className="text-red-500 text-xs mt-1">
                Password should be at least 6 characters.
              </p>
            )}
          </div>

          <div className="mb-4">
            <button
              type="submit"
              className="w-full py-2 px-4 bg-sky-500 text-white rounded-md hover:bg-sky-600 focus:outline-none focus:bg-blue-600"
            >
              Sign in
            </button>
          </div>
        </form>

        <div className="text-gray-500">--OR--</div>

        <div className="mt-4 text-gray-600">
          Create an Account:
          <Link href="/register" className="ml-1 text-blue-500">
            Register
          </Link>
        </div>
      </div>
    </>
  );
};

export default LoginForm;
