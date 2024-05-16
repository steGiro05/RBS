import Sidebar from "@/components/layout_components/sidebar";

export default function Layout({ children }) {
  return (
    <>
      <div className="flex flex-row h-5/6 w-[88%] mx-auto">
        <div className="flex-grow">{children}</div>
        <div className="hidden sm:block w-64 pl-10">
          <Sidebar />
        </div>
      </div>
    </>
  );
}
