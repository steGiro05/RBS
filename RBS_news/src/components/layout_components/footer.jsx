import React from "react";

const Footer = () => {
  return (
    <footer className=" bg-slate-900 text-white py-8 bottom-0">
      <div className="container mx-auto">
        <div className="flex flex-wrap justify-center">
          <div className="w-full md:w-1/3 px-4 mb-8">
            <h3 className="text-xl font-semibold mb-4">About Us</h3>
            <p className="text-sm">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit
              amet gravida nunc. Nulla facilisi.
            </p>
          </div>
          <div className="w-full md:w-1/3 px-4 mb-8 flex flex-col justify-center items-center">
            <h3 className="text-xl font-semibold mb-4">Quick Links</h3>
            <ul className="text-sm list-disc">
              <li>
                <a href="#" className="text-blue-400 hover:text-blue-600">
                  Home
                </a>
              </li>
              <li>
                <a href="#" className="text-blue-400 hover:text-blue-600">
                  News
                </a>
              </li>
              <li>
                <a href="#" className="text-blue-400 hover:text-blue-600">
                  About
                </a>
              </li>
              <li>
                <a href="#" className="text-blue-400 hover:text-blue-600">
                  Contact
                </a>
              </li>
            </ul>
          </div>

          <div className="w-full md:w-1/3 px-4 mb-8 flex flex-col justify-center items-center">
            <h3 className="text-xl font-semibold mb-4">Contact Us</h3>
            <p className="text-sm">
              9 Via Antonio Cantore
              <br />
              Brescia, Italy, 25128
              <br />
              RBS@example.com
              <br />
              (+39) 339-419-7712
            </p>
          </div>
        </div>

        <div className="flex justify-center">
          <hr className="w-1/2 border-gray-600" />
        </div>
        <p className="text-center mt-4">
          &copy; {new Date().getFullYear()} NewsSite. All rights reserved.
        </p>
      </div>
    </footer>
  );
};

export default Footer;
