"use client";

import AdminSideNav from "./AdminSideNav";
import AdminTopNav from "./AdminTopNav";
import { useState } from "react";

type Props = { children: React.ReactNode };

const AdminLayout = ({ children }: Props) => {
  const [isSideNavVisible, setSideNavVisible] = useState(true);
  const handleSidebarToggle = () => {
    setSideNavVisible(!isSideNavVisible);
  };

  return (
    <>
      <div className="flex relative">
        <AdminTopNav
          toggleSidebar={handleSidebarToggle}
          isSideNavVisible={isSideNavVisible}
        />
        <AdminSideNav isSideNavVisible={isSideNavVisible} />

        {/* Main Content */}
        <div
          className="flex flex-col overflow-y-auto pt-14"
          style={{
            width: isSideNavVisible ? "calc(100vw - 16rem)" : "100%",
            marginLeft: isSideNavVisible ? "16rem" : "0",
          }}
        >
          <div className="p-5">{children}</div>
        </div>
      </div>
    </>
  );
};

export default AdminLayout;
