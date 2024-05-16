import React from "react";
import Link from "next/link";
import Image from "next/image";

const ArticleCard = ({
  title,
  subtitle,
  author,
  genre,
  imgUrl,
  publishing_date,
  href,
}) => {
  return (
    <>
      <Link href={href}>
        <div className="flex flex-row border-b border-gray-400">
          <div>
            <p className="text-base font-bold text-blue-500 dark:text-blue-300">
              {genre}
            </p>

            <h5 className="text-2xl font-bold tracking-tight text-gray-900 dark:text-white font-serif">
              {title}
            </h5>
            <h6 className="text-lg font-medium text-gray-700 dark:text-gray-400 font-sans">
              {subtitle}
            </h6>
            <div className="flex flex-row ">
              <p className="mr-4 text-base font-normal text-gray-600 dark:text-gray-300">
                {author}
              </p>
              <p className="text-base font-normal text-gray-700 dark:text-gray-300">
                •{publishing_date}
              </p>
            </div>
          </div>
          {imgUrl && (
            <Image
              src={`/articlesImg/${imgUrl}`}
              height={100}
              width={200}
              alt="Article Image"
            />
          )}
        </div>
      </Link>
    </>
  );
};

export default ArticleCard;
