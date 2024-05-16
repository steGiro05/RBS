import ArticlePage from "@/components/post_components/article_page";
import CommentSection from "@/components/feedback_components/comment_section";
import { formatDate } from "@/../util/getFormattedDate";
import { headers } from "next/headers";

const urlArticle = "http://localhost:3000/api/articles/byId";
const urlComments = "http://localhost:3000/api/comments";

const fetchArticleById = async (id) => {
  const response = await fetch(urlArticle + `/${id}`, {
    method: "GET",
    headers: headers(),
  });
  if (!response.ok) return null;
  return response.json();
};
const fetchComments = async (id) => {
  const response = await fetch(urlComments + `/${id}`, {
    method: "GET",
    headers: headers(),
  });
  if (!response.ok) return null;
  return response.json();
};

const page = async ({ params }) => {
  const article = await fetchArticleById(params.articleId);
  const comments = await fetchComments(params.articleId);

  return (
    <>
      {article ? (
        <div>
          <ArticlePage
            articleId={params.articleId}
            title={article.title}
            subtitle={article.subtitle}
            content={article.content}
            journalist={article.first_name + " " + article.last_name}
            genre={article.genre}
            idGenre={article.idGenre}
            imgUrl={article.imgUrl}
            publishing_date={formatDate(new Date(article.publishing_date))}
            likesCount={article.likesCount}
          />
          <CommentSection comments={comments} articleId={params.articleId} />
        </div>
      ) : (
        <div>Not found!</div>
      )}
    </>
  );
};

export default page;
