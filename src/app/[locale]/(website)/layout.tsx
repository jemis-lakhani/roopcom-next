import TailwindSizeIndicator from "@/components/atoms/TailwindSizeIndicator";
import NavigationMenu from "@/components/molecules/RCNavigationMenu";
import React from "react";
import createSupabaseClient from "@/lib/supabase";

export default async function Layout({
  children,
}: {
  children: React.ReactNode;
}) {
  const supabase = createSupabaseClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  const menuData = [
    {
      title: "Partners",
      link: "/partners",
    },
    {
      title: "Service & Contact",
      link: "/contact",
    },
  ];
  return (
    <div>
      <NavigationMenu menuData={menuData} user={user} />
      <main>{children}</main>
      <footer>{/* Footer content */}</footer>
      <TailwindSizeIndicator />
    </div>
  );
}
