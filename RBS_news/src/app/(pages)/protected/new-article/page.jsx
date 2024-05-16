import NewArticleForm from "@/components/post_components/article_upload/new_article_form";

const Page = () => {
  return (
    <>
      <h1 className="text-3xl text-center font-bold mb-4">New Article</h1>
      <div className="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
        <NewArticleForm />
      </div>
    </>
  );
};

export default Page;
