import createClient from "@/lib/supabase-server";
import React from "react";
import { Suspense } from "react";
import { customerColumns } from "./columns";
import { DataTable } from "./DataTable";
import { Button } from "@/components/atoms/new-york/ui/button";
import AddPackagePopup from "./AddPackagePopup";
type Props = {};

const supabase = createClient();
const getPackages = async () => {
  const data = await supabase
    .from("packages")
    .select()
    .order("updated_at", { ascending: false });
  return data?.data || [];
};

const PackagesTable = async () => {
  const data = await getPackages();
  return <DataTable columns={customerColumns} data={data} />;
};

const AddPackagesPage = (props: Props) => {
  return (
    <div className="flex flex-col bg-white p-5">
      <div className="w-full flex flex-row-reverse gap-2 mb-2">
        <Button variant="destructive">Auto Repack</Button>
        <AddPackagePopup />
        <div className="mr-auto text-xl flex items-center font-bold">
          <h1>Recently Added</h1>
        </div>
      </div>
      <Suspense
        fallback={
          <>
            <div>Loading...</div>
          </>
        }
      >
        <PackagesTable />
      </Suspense>
    </div>
  );
};

export default AddPackagesPage;
