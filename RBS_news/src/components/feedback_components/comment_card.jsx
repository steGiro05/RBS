import Link from "next/link";

const CommentCard = ({ username, content, publishing_date }) => {
  return (
    <div className="bg-white shadow-md rounded-lg p-4 mb-4">
      <div className="flex items-center justify-between mb-2">
        <Link href={"#"} className="text-blue-500 font-bold">
          {username}
        </Link>
        <p className="text-gray-500 text-sm">{publishing_date}</p>
      </div>
      <div className="text-gray-700">{content}</div>
    </div>
  );
};

export default CommentCard;
