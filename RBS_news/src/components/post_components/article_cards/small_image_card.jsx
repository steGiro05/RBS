import React from "react";
import Link from "next/link";
import Image from "next/image";

const SmallImageCard = ({
  title,
  subtitle,
  author,
  genre,
  imgUrl,
  publishing_date,
  href,
}) => {
  return (
    <Link href={href} className="w-full">
      <div className="flex flex-row justify-between border-b border-gray-400 p-4 bg-white dark:bg-gray-800 shadow-lg rounded-lg mx-4 h-full w-full">
        <div>
          <p className="text-sm font-semibold text-blue-500 uppercase mb-2">
            {genre}
          </p>
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            {title}
          </h2>
          <h3 className="text-xl font-medium text-gray-700 dark:text-gray-400 mb-4">
            {subtitle}
          </h3>
          <p className="text-base font-normal text-gray-600 dark:text-gray-300 mb-2">
            {author}
          </p>
          <p className="text-base font-normal text-gray-700 dark:text-gray-300 self-end">
            • {publishing_date}
          </p>
        </div>
        {imgUrl && (
          <Image
            src={`/articlesImg/${imgUrl}`}
            height={40}
            width={200}
            alt="Article Image"
            className="rounded-lg mb-4"
          />
        )}
      </div>
    </Link>
  );
};

export default SmallImageCard;
