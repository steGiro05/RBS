import MainCard from "./article_cards/main_card";
import SmallCard from "./article_cards/small_card";
import SmallImageCard from "./article_cards/small_image_card";
import MediumCard from "./article_cards/medium_card";
import { formatDateAndRelative } from "@/../../util/getFormattedDate";

const article_list_layout = ({ articles }) => {
  return (
    <>
      {articles[0] && (
        <MainCard
          title={articles[0].title}
          subtitle={articles[0].subtitle}
          author={articles[0].author}
          genre={articles[0].genre}
          imgUrl={articles[0].imgUrl || "imgNotFound.png"}
          publishing_date={formatDateAndRelative(articles[0].publishing_date)}
          href={`/protected/post/${articles[0].id}`}
        />
      )}

      <div className="flex gap-4 mb-4">
        {articles.slice(1, 4).map((article, index) => (
          <SmallCard
            key={index}
            title={article.title}
            subtitle={article.subtitle}
            author={article.author}
            genre={article.genre}
            publishing_date={formatDateAndRelative(article.publishing_date)}
            imgUrl={article.imgUrl || "imgNotFound.png"}
            href={`/protected/post/${article.id}`}
          />
        ))}
      </div>

      <div className="flex gap-4">
        {articles[4] && (
          <div className="w-2/3">
            <SmallCard
              title={articles[4].title}
              subtitle={articles[4].subtitle}
              author={articles[4].author}
              genre={articles[4].genre}
              publishing_date={formatDateAndRelative(
                articles[4].publishing_date
              )}
              imgUrl={articles[4].imgUrl || "imgNotFound.png"}
              href={`/protected/post/${articles[4].id}`}
            />
          </div>
        )}
        {articles[5] && (
          <SmallImageCard
            title={articles[5].title}
            subtitle={articles[5].subtitle}
            author={articles[5].author}
            genre={articles[5].genre}
            publishing_date={formatDateAndRelative(articles[5].publishing_date)}
            href={`/protected/post/${articles[5].id}`}
            imgUrl={articles[5].imgUrl || "imgNotFound.png"}
          />
        )}
      </div>

      <div className="flex flex-wrap">
        <div className="w-full md:w-3/5">
          {articles[6] && (
            <MediumCard
              title={articles[6].title}
              subtitle={articles[6].subtitle}
              author={articles[6].author}
              genre={articles[6].genre}
              publishing_date={formatDateAndRelative(
                articles[6].publishing_date
              )}
              href={`/protected/post/${articles[6].id}`}
              imgUrl={articles[6].imgUrl || "imgNotFound.png"}
            />
          )}
        </div>
        <div className="w-full md:w-2/5 flex flex-col justify-between md:justify-start md:pl-4">
          {articles.slice(7, 9).map((article, index) => (
            <div className="mt-5" key={index}>
              <SmallCard
                title={article.title}
                subtitle={article.subtitle}
                author={article.author}
                genre={article.genre}
                publishing_date={formatDateAndRelative(article.publishing_date)}
                href={`/protected/post/${article.id}`}
              />
            </div>
          ))}
        </div>
      </div>
    </>
  );
};

export default article_list_layout;
