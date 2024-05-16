import Header from "@/components/layout_components/header";
import Footer from "@/components/layout_components/footer";

export default function Layout({ children }) {
  return (
    <>
      <Header />
      <div className="flex flex-col h-auto">{children}</div>
      <Footer />

      {/* <div className="flex flex-row h-5/6 border-t border-black w-[88%] mx-auto ">
        <div className="flex-grow">{children}</div>
        <div className="w-64 pl-10">
          <Sidebar />
        </div>
      </div> */}
    </>
  );
}
