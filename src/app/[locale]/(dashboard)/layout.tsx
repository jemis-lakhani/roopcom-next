import { Search } from "@/components/atoms/Search";
import TeamSwitcher from "@/components/atoms/TeamSwitcher";
import { RCNavigationMenuAdmin } from "@/components/molecules/RCNavigationMenuAdmin";
import SideNav from "@/components/molecules/RCSideNav";
import { RCUserNav } from "@/components/molecules/RCUserNav";
import Image from "next/image";

export default function dashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      {/* <div className="md:hidden">
        <Image
          src="/examples/dashboard-light.png"
          width={1280}
          height={866}
          alt="Dashboard"
          className="block dark:hidden"
        />
        <Image
          src="/examples/dashboard-dark.png"
          width={1280}
          height={866}
          alt="Dashboard"
          className="hidden dark:block"
        />
      </div> */}
      {/* <div className=" flex-col md:flex">
        <div className="border-b">
          <div className="flex h-16 items-center px-4">
            <TeamSwitcher />
            <RCNavigationMenuAdmin className="mx-6" />
            <div className="ml-auto flex items-center space-x-4">
              <Search />
              <RCUserNav />
            </div>
          </div>
        </div>
        <div className="flex-1 space-y-4 p-8 pt-6">{children}</div>
      </div> */}
      <div className="flex flex-col relative">
        <div className="sticky z-10 top-0 left-0 right-0 w-full h-16">
          <div className="flex h-full">
            <div className="flex w-64 text-lg font-semibold min-w-64 bg-primary text-white items-center pl-8">
              RoopCom Admin
            </div>
            <div className="bg-white flex-1"></div>
          </div>
        </div>
        <div className="flex " style={{ height: "calc(100vh - 64px)" }}>
          <div className="w-64 min-w-64 h-full">
            <SideNav></SideNav>
          </div>
          <div className="flex-1 p-8 pt-6">{children}</div>
        </div>
      </div>
    </>
  );
}
