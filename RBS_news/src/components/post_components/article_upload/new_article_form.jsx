"use client";

import { useState } from "react";
import { useForm } from "react-hook-form";
import { useRouter } from "next/navigation";
import useSWR from "swr"; //check docs
import Alert from "@mui/material/Alert";

const url = "/api/genres";
const fetcher = (url) => fetch(url).then((res) => res.json());

const NewArticleForm = () => {
  const router = useRouter();

  const { data: genres } = useSWR(url, fetcher);

  const [alert, setAlert] = useState(null);
  const [uploading, setUploading] = useState(false);
  const [selectedImage, setSelectedImage] = useState("");

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  const formSubmit = async (article) => {
    if (!article) return null;

    setUploading(true);

    console.log(typeof article.img[0]);

    let img;
    if (typeof article.img[0] === "undefined") img = "";
    else img = article.img[0];

    try {
      const data = new FormData();
      data.set("contentFile", article.content[0]);
      data.set("title", article.title);
      data.set("subtitle", article.subtitle);
      data.set("genre", article.genre);
      data.set("img", img);

      const res = await fetch("/api/articles/postArticle", {
        method: "POST",
        body: data,
      });

      if (!res.ok) {
        setUploading(false);
        const { message } = await res.json();
        setAlert({ severity: "error", text: message });
        throw new Error();
      }
      setAlert({ severity: "success", text: "Article published" });
      setTimeout(() => {
        router.replace("/protected/home");
      }, 2000);
    } catch (e) {
      console.error(e);
    }
  };

  return (
    <>
      {alert && (
        <Alert variant="filled" severity={alert.severity}>
          {alert.text}
        </Alert>
      )}

      <form
        onSubmit={handleSubmit(formSubmit)}
        className="max-w-lg mx-auto mt-8"
      >
        {/* Input fields */}
        {/* Title */}
        <input
          {...register("title", { required: true })}
          placeholder="Title"
          className="border border-gray-300 rounded-md px-4 py-2 mb-4 block w-full"
        />
        {errors.title && (
          <p className="text-red-500 text-sm">Title is required.</p>
        )}

        {/* Subtitle */}
        <input
          {...register("subtitle", { required: true, minLength: 2 })}
          placeholder="Subtitle"
          className="border border-gray-300 rounded-md px-4 py-2 mb-4 block w-full"
        />
        {errors.subtitle && (
          <p className="text-red-500 text-sm">
            Subtitle is required and must be at least 2 characters long.
          </p>
        )}

        {/* Content */}
        <label htmlFor="content">Content (file.txt):</label>
        <input
          type="file"
          accept=".txt"
          {...register("content", { required: true })}
          className="border border-gray-300 rounded-md px-4 py-2 mb-4 block w-full"
        />
        {errors.content && (
          <p className="text-red-500 text-sm">Content is required.</p>
        )}

        {/* Genre */}
        <label htmlFor="genre">Genre:</label>
        <select
          name="genre"
          id="genre"
          {...register("genre", { required: true })}
          className="border border-gray-300 rounded-md px-4 py-2 mb-4 block w-full"
        >
          <option value=""></option>
          {genres?.map((item) => (
            <option key={item.id} value={item.id}>
              {item.name}
            </option>
          ))}
        </select>
        {errors.genre && (
          <p className="text-red-500 text-sm">Genre is required.</p>
        )}

        {/* Image */}
        <label htmlFor="image">Image:</label>
        <br />
        <input
          {...register("img")}
          accept="image/*"
          type="file"
          onChange={({ target }) => {
            if (target.files) {
              const file = target.files[0];

              if (file) setSelectedImage(URL.createObjectURL(file));
              else setSelectedImage(null);
            }
          }}
        />
        <div className="w-40 aspect-video rounded flex items-center justify-center border-2 border-dashed cursor-pointer">
          {selectedImage ? (
            <img src={selectedImage} alt="" className="w-full h-auto" />
          ) : (
            <span>Your Image</span>
          )}
        </div>

        {/* Submit Button */}
        <button
          disabled={uploading}
          className={`bg-blue-500 p-3 w-32 text-center rounded text-white ${
            uploading ? "opacity-50 cursor-not-allowed" : ""
          }`}
        >
          {uploading ? "Uploading.." : "Upload"}
        </button>
      </form>
    </>
  );
};

export default NewArticleForm;
