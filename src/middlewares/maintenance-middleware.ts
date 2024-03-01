import { NextRequest, NextResponse } from "next/server";

const maintemanceMode = {
    enabled: process.env.NEXT_PUBLIC_MAINTENANCE_MODE?.length,
    page: '/under-construction',
};

export default async function maintenanceMiddleware(request: NextRequest) {
    const res = NextResponse.next()

    const cookie = request.cookies.get('maintenancemode');
    if (!request.nextUrl.pathname.startsWith(maintemanceMode.page) && maintemanceMode.enabled) {
        if (!cookie || cookie.value !== process.env.NEXT_PUBLIC_MAINTENANCE_MODE) {
            return NextResponse.redirect(new URL(maintemanceMode.page, request.url));
        }
    }
    if (
        request.nextUrl.pathname.startsWith(maintemanceMode.page) &&
        (!maintemanceMode.enabled || (cookie && cookie.value === process.env.NEXT_PUBLIC_MAINTENANCE_MODE))
    ) {
        return NextResponse.redirect(new URL('/', request.url));
    }

    return res
}