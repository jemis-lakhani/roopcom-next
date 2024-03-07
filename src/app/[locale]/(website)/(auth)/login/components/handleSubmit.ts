import createSupabaseClient from "@/lib/supabase";

const supabase = createSupabaseClient();

export default async function onSubmitLoginForm(e: FormData): Promise<any> {
  const email = e.get("email")?.toString() ?? "";
  const password = e.get("password")?.toString() ?? "";

  const {
    data: { user },
    error,
  } = await supabase.auth.signInWithPassword({
    email,
    password,
  });

  return error;
}
