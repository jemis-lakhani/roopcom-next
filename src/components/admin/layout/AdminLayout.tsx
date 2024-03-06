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
          className="flex flex-col pt-14"
          style={{
            width: isSideNavVisible ? "calc(100vw - 18rem)" : "100% !important",
          }}
        >
          <div className="p-8">{children}</div>
        </div>
      </div>
    </>
  );
};

export default AdminLayout;
