import { Database } from "@/lib/database.types"
import { createMiddlewareClient } from "@supabase/auth-helpers-nextjs"
import { NextRequest, NextResponse } from "next/server"

export default async function supabaseMiddleware(req: NextRequest) {
    const res = NextResponse.next()
    const supabase = createMiddlewareClient<Database>({ req, res })
    await supabase.auth.getSession()
    return res
}