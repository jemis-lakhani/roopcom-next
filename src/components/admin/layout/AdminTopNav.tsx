"use client";

import { Icons } from "@/components/atoms/icons";
import { Toggle } from "@/components/atoms/new-york/ui/toggle";
import { RCNavigationMenuAdmin } from "@/components/molecules/RCNavigationMenuAdmin";
import clsx from "clsx";

type Props = {
  toggleSidebar: () => void;
  isSideNavVisible: boolean;
};

const AdminTopNav = ({ toggleSidebar, isSideNavVisible }: Props) => {
  return (
    <div
      className={clsx(
        "fixed h-14 bg-white pr-8 z-[1000] transition-width duration-300 ease-in-out",
        {
          "ml-64": isSideNavVisible,
        },
      )}
      style={{ width: isSideNavVisible ? "calc(100vw - 16rem)" : "100vw" }}
    >
      <div className="flex items-center justify-between h-full">
        <Toggle
          onClick={toggleSidebar}
          children={<Icons.bars className="h-4 w-4" />}
        />
        <RCNavigationMenuAdmin />
      </div>
    </div>
  );
};

export default AdminTopNav;
