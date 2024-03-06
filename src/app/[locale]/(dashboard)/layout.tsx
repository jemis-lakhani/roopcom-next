import AdminLayout from "@/components/admin/layout/AdminLayout";

export default function dashboardLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <AdminLayout children={children} />;
}
