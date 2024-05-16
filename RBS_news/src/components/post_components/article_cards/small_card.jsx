import React from "react";
import Link from "next/link";

const SmallCard = ({
  title,
  subtitle,
  author,
  genre,
  publishing_date,
  href,
}) => {
  return (
    <Link href={href} className="w-full">
      <div className="flex flex-col justify-between border-b border-gray-400 p-4 bg-white dark:bg-gray-800 shadow-lg rounded-lg mx-4 h-full w-full">
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
        </div>
        <p className="text-base font-normal text-gray-700 dark:text-gray-300 self-end">
          • {publishing_date}
        </p>
      </div>
    </Link>
  );
};

export default SmallCard;
