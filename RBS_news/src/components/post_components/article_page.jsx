import Link from "next/link";
import LikeBtn from "@/components/feedback_components/like_btn";
import Image from "next/image";
import { formatNumber } from "@/../../util/getFormattedNumber";

const ArticlePage = ({
  articleId,
  title,
  subtitle,
  content,
  journalist,
  idGenre,
  genre,
  publishing_date,
  imgUrl,
  likesCount,
}) => {
  likesCount = formatNumber(likesCount);
  return (
    <div className="max-w-3xl mx-auto py-8 px-4">
      <div className="flex flex-row">
        <Link
          href={`/protected/home/${idGenre}`}
          className=" text-sm text-blue-500 font-bold mb-2 block"
        >
          {genre}
        </Link>
        <div className="flex ml-auto">
          <p>{likesCount}</p>
          <LikeBtn articleId={articleId} />
        </div>
      </div>
      <p className="text-sm text-gray-500 mb-4">{publishing_date}</p>
      {/* Stile della data */}
      <h1 className="text-3xl font-bold mb-4">{title}</h1>
      <p className="text-lg text-gray-700 mb-6">{subtitle}</p>
      <div className="">
        {imgUrl && (
          <Image
            src={`/articlesImg/${imgUrl}`}
            alt={"articleImg"}
            width={400}
            height={300}
            className="float-right ml-10 mb-10"
          />
        )}
        <p>{content}</p>
      </div>

      <div className="flex items-center mt-5">
        <div className="flex-shrink-0">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            strokeWidth={1.5}
            stroke="currentColor"
            className="w-6 h-6"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              d="M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z"
            />
          </svg>
        </div>
        <div className="ml-3">
          <p className="text-sm font-medium text-gray-900">{journalist}</p>
          <Link href="#" className="text-gray-500 text-xs hover:text-blue-700">
            View all articles by {journalist}
          </Link>
        </div>
      </div>
    </div>
  );
};

export default ArticlePage;
