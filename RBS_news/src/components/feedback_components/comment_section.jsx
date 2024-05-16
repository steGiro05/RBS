import CommentCard from "./comment_card";
import CommentInput from "./comment_input";
import { formatDateAndRelative } from "@/../../util/getFormattedDate";

const CommentSection = ({ comments, articleId }) => {
  return (
    <>
      <h1>{comments.length} Comments</h1>
      <CommentInput articleId={articleId} />
      <div>
        {comments?.map((item, index) => (
          <CommentCard
            key={index}
            username={item.username}
            publishing_date={formatDateAndRelative(item.publishing_date)}
            content={item.content}
          />
        ))}
      </div>
    </>
  );
};

export default CommentSection;
