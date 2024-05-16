"use client";

import { useForm } from "react-hook-form";
import { useRouter } from "next/navigation";

const CommentInput = ({ articleId }) => {
  const router = useRouter();

  const {
    register,
    handleSubmit,
    reset,
    formState: { errors },
  } = useForm();

  const onSubmit = async ({ content }) => {
    const comment = { content, articleId };

    reset();
    router.refresh();
    if (comment) {
      await fetch("/api/comments/postComment", {
        method: "POST",
        body: JSON.stringify(comment),
      })
        .then((response) => {
          if (!response.ok) {
            throw new Error("Si è verificato un errore durante la richiesta.");
          }
          return response.json(); // Parsa la risposta JSON
        })
        .then((data) => {
          // Gestisci la risposta ottenuta
          console.log("Risposta dal server:", data);
        })
        .catch((error) => {
          // Gestisci gli errori di rete o altri errori durante la richiesta
          console.error("Errore durante la richiesta:", error);
        });
    }
    return null;
  };

  return (
    <div className="flex items-center justify-start p-4 w-full">
      <form onSubmit={handleSubmit(onSubmit)} className="flex w-80">
        <input
          id="content"
          type="text"
          name="content"
          placeholder="Comment.."
          {...register("content", {
            required: true,
          })}
          className="w-full px-3 py-2 border rounded-l-md focus:outline-none focus:border-blue-500 "
        />
        {errors.content && errors.content.type === "required" && (
          <p className="text-red-500 text-xs mt-1">Content is required.</p>
        )}
        <button
          type="submit"
          className="py-2 px-4   bg-blue-500 text-white rounded-md hover:bg-blue-600 focus:outline-none focus:bg-blue-600"
        >
          Send
        </button>
      </form>
    </div>
  );
};

export default CommentInput;
