import createSupabaseClient from "@/lib/supabase";

const supabase = createSupabaseClient();

export default async function onSubmitLoginForm(e: FormData): Promise<any> {
    // console.log();
    const email = e.get("email")?.toString() ?? "";
    const password = e.get("password")?.toString() ?? "";

    const {
        data: { user },
        error,
    } = await supabase.auth.signInWithPassword({
        email,
        password,
    });

    // if (error) console.error(error.message);
    return error;
    // console.log(user);

    // setIsLoading(true);

    // setTimeout(() => {
    //   setIsLoading(false);
    // }, 3000);
}