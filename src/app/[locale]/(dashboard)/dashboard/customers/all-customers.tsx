import createClient from "@/lib/supabase-server";
import { customerColumns } from "./columns";
import type { Customer } from "./columns";
import { DataTable } from "./data-table";
import { Skeleton } from "@/components/ui/skeleton";

import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";

export default async function AllCustomers() {
  const supabase = createClient();

  const { data: customers } = await supabase.from("customers").select();

  return <DataTable columns={customerColumns} data={customers as Customer[]} />;
}

export function AllCustomersSkeleton() {
  return (
    <Table>
      <TableHeader>
        <TableRow>
          <TableHead>
            <Skeleton className="w-100 h-5" />
          </TableHead>
        </TableRow>
      </TableHeader>
      <TableBody>
        {[...Array(10)].map((i) => (
          <TableRow key={i}>
            <TableCell>
              <Skeleton className="w-100 h-5" />
            </TableCell>
          </TableRow>
        ))}
      </TableBody>
    </Table>
  );
}
