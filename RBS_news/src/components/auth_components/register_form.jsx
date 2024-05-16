"use client";

import { useForm } from "react-hook-form";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useState } from "react";
import Alert from "@mui/material/Alert";

const RegisterForm = () => {
  const [showPW, setShowPW] = useState(false);
  const [showInfo, setShowInfo] = useState(false);
  const [alert, setAlert] = useState(null);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  const router = useRouter();

  const onSubmit = async (user) => {
    if (user) {
      await fetch("/api/auth/register", {
        method: "POST",
        body: JSON.stringify(user),
      })
        .then(async (response) => {
          if (!response.ok) {
            const data = await response.json();
            const errorMessage = data.message;
            setAlert({ severity: "error", text: errorMessage });

            throw new Error("Si è verificato un errore durante la richiesta.");
          }
          return response.json(); // Parsa la risposta JSON
        })
        .then((data) => {
          // Gestisci la risposta ottenuta
          console.log("Risposta dal server:", data);
          router.replace("/");
          router;
        })
        .catch((error) => {
          // Gestisci gli errori di rete o altri errori durante la richiesta
          console.error("Errore durante la richiesta:", error);
        });
    }
    return null;
  };

  return (
    <>
      <div className="flex flex-col items-center justify-center w-3/5 h-dvh">
        {alert && (
          <Alert
            variant="filled"
            severity={alert.severity}
            className="absolute top-10 "
          >
            {alert.text}
          </Alert>
        )}
        <h1 className="font-bold text-2xl">Create your Account</h1>

        <form onSubmit={handleSubmit(onSubmit)} className="bg-white p-5 ">
          <div className="">
            <label
              htmlFor="username"
              className="block mb-2 font-semibold text-gray-500"
            >
              Username
            </label>
            <input
              placeholder="Enter your Username.."
              id="username"
              type="text"
              name="username"
              {...register("username", { required: true })}
              className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500 "
            />
            {errors.username && errors.username.type === "required" && (
              <p className="text-red-500 text-xs mt-1">Username is required.</p>
            )}
          </div>

          <div className="mb-4">
            <label
              htmlFor="email"
              className="block mb-2 font-semibold text-gray-500"
            >
              Email
            </label>
            <input
              placeholder="Enter your Email.."
              id="email"
              type="text"
              name="email"
              {...register("email", {
                required: true,
                pattern: /^[^@ ]+@[^@ ]+\.[^@ .]{2,}$/,
              })}
              className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
            />
            {errors.email && errors.email.type === "required" && (
              <p className="text-red-500 text-xs mt-1">Email is required.</p>
            )}
            {errors.email && errors.email.type === "pattern" && (
              <p className="text-red-500 text-xs mt-1">Email is not valid.</p>
            )}
          </div>

          <div className="flex flex-row items-center mb-2 space-x-2 ">
            <label
              htmlFor="name"
              className="block mb-2 font-semibold text-gray-500"
            >
              Name
            </label>
            <input
              placeholder="Enter your Name.."
              id="name"
              type="text"
              name="name"
              {...register("name", { required: true })}
              className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
            />
            <label
              htmlFor="surname"
              className="block mb-2 font-semibold text-gray-500"
            >
              Surname
            </label>
            <input
              placeholder="Enter your Surname.."
              id="surname"
              type="text"
              name="surname"
              {...register("surname", { required: true })}
              className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
            />
          </div>
          {errors.name && errors.name.type === "required" && (
            <p className="text-red-500 text-xs mt-1">Name is required.</p>
          )}
          {errors.surname && errors.surname.type === "required" && (
            <p className="text-red-500 text-xs mt-1">Surname is required.</p>
          )}

          <div className="mb-2">
            <label
              htmlFor="birthday"
              className="block mb-2 font-semibold text-gray-500"
            >
              Birthday
            </label>
            <input
              id="birthday"
              type="date"
              name="birthday"
              {...register("birthday", { required: true })}
              className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
            />
            {errors.birthday && errors.birthday.type === "required" && (
              <p className="text-red-500 text-xs mt-1">Birthday is required.</p>
            )}
          </div>

          <div className="mb-4 relative">
            <div className="flex flex-row items-center mb-2 gap-1">
              <label
                htmlFor="password"
                className="block font-semibold text-gray-500"
              >
                Password
              </label>
              <div className="relative">
                <svg
                  onMouseEnter={() => {
                    setShowInfo(true);
                  }}
                  onMouseLeave={() => setShowInfo(false)}
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="gray"
                  className="w-6 h-6"
                >
                  <path
                    fillRule="evenodd"
                    d="M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12Zm11.378-3.917c-.89-.777-2.366-.777-3.255 0a.75.75 0 0 1-.988-1.129c1.454-1.272 3.776-1.272 5.23 0 1.513 1.324 1.513 3.518 0 4.842a3.75 3.75 0 0 1-.837.552c-.676.328-1.028.774-1.028 1.152v.75a.75.75 0 0 1-1.5 0v-.75c0-1.279 1.06-2.107 1.875-2.502.182-.088.351-.199.503-.331.83-.727.83-1.857 0-2.584ZM12 18a.75.75 0 1 0 0-1.5.75.75 0 0 0 0 1.5Z"
                    clipRule="evenodd"
                  />
                </svg>
                {showInfo && (
                  <div className="absolute top-0 left-full ml-2 bg-white shadow-md p-2 z-10 w-48">
                    <p>Password must contain:</p>
                    <ul className="list-disc ml-4">
                      <li>One lowercase letter</li>
                      <li>One uppercase letter</li>
                      <li>One digit</li>
                      <li>One special character among @$!%*?&</li>
                    </ul>
                  </div>
                )}
              </div>
            </div>
            <div className="flex items-center relative">
              <input
                placeholder="Enter your Password.."
                id="password"
                type={showPW ? "text" : "password"}
                name="password"
                {...register("password", {
                  required: true,
                  minLength: 8,
                  pattern:
                    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/,
                })}
                className="w-full px-3 py-2 border rounded-md focus:outline-none focus:border-blue-500"
              />
              <button
                type="button"
                className="absolute right-3"
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
                Password should be at least 8 characters.
              </p>
            )}
            {errors.password && errors.password.type === "pattern" && (
              <p className="text-red-500 text-xs mt-1">
                Check the password rules.
              </p>
            )}
          </div>

          <div className="">
            <button
              type="submit"
              className="w-full py-2 px-4 bg-blue-500 text-white rounded-md hover:bg-blue-600 focus:outline-none focus:bg-blue-600"
            >
              Sign Up
            </button>
          </div>
        </form>

        <div className="text-gray-500">--OR--</div>

        <div className="mt-4 text-gray-600">
          Already have an account?
          <Link href="/" className="ml-1 text-blue-500 underline">
            Login
          </Link>
        </div>
      </div>
    </>
  );
};

export default RegisterForm;
