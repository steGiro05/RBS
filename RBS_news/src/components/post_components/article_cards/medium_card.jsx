import React from "react";
import Link from "next/link";
import Image from "next/image";

const MediumCard = ({
  title,
  subtitle,
  author,
  genre,
  imgUrl,
  publishing_date,
  href,
}) => {
  return (
    <Link href={href} className="">
      <div className="flex flex-col justify-center border-b border-gray-400 p-4 bg-white dark:bg-gray-800 shadow-lg rounded-lg mx-4 my-8  w-full">
        {imgUrl && (
          <Image
            src={`/articlesImg/${imgUrl}`}
            height={150}
            width={300}
            alt="Article Image"
            className="rounded-lg mb-4"
          />
        )}
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
      </div>
    </Link>
  );
};

export default MediumCard;
