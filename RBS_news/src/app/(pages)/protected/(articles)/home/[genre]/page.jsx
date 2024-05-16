import ArticleList from "@/components/post_components/article_list_layout";
import { headers } from "next/headers";

const url = "http://localhost:3000/api/articles/byGenre";

const fetchArticleByGenre = async (id) => {
  const response = await fetch(url + `/${id}`, {
    method: "GET",
    headers: headers(),
  });
  if (!response.ok) return null;
  return response.json();
};

const page = async ({ params }) => {
  const articles = await fetchArticleByGenre(params.genre);

  return (
    <>
      {articles[0] ? <ArticleList articles={articles} /> : <p>No articles!!</p>}
    </>
  );
};

export default page;
