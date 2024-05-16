import ArticleList from "@/components/post_components/article_list";
import { headers } from "next/headers";

const url = "http://localhost:3000/api/articles";
const getArticles = async () => {
  const response = await fetch(url, { method: "GET", headers: headers() });
  return response.json();
};

const page = async () => {
  const articles = await getArticles();

  return (
    <>
      {articles[0] ? <ArticleList articles={articles} /> : <p>No articles!!</p>}
    </>
  );
};

export default page;
