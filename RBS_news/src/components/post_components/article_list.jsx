import ArticleListLayout from "@/components/post_components/article_list_layout";
import ArticleCard from "@/components/post_components/article_cards/mobile_card";
import { formatDateAndRelative } from "@/../../util/getFormattedDate";

const article_list = ({ articles }) => {
  // Inizializza un array vuoto per contenere gli articoli separati
  const separedArticles = [];

  // Calcola il numero di iterazioni necessarie
  const numIterations = Math.ceil(articles.length / 9);

  // Itera sul numero di iterazioni
  for (let i = 0; i < numIterations; i++) {
    // Utilizza il metodo slice per ottenere una porzione di 9 articoli
    const slicedArticles = articles.slice(i * 9, (i + 1) * 9);
    // Aggiungi i 9 articoli separati all'array separedArticles
    separedArticles.push(slicedArticles);
  }

  // Ora separedArticles conterrà gli articoli divisi in array di 9 elementi ciascuno

  return (
    <>
      <div className="flex flex-col ">
        {separedArticles.map((item, index) => {
          return <ArticleListLayout articles={item} key={index} />;
        })}
        {/* {articles.map((item) => {
          return (
            <ArticleCard
              key={item.id}
              title={item.title}
              subtitle={item.subtitle}
              author={item.author}
              genre={item.genre}
              imgName={item.imgName || "imgNotFound.png"}
              publishing_date={formatDateAndRelative(item.publishing_date)}
              href={`/protected/post/${item.id}`}
            />
          );
        })}
        */}
      </div>
    </>
  );
};

export default article_list;
