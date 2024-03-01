import { createClientComponentClient } from '@supabase/auth-helpers-nextjs'

const createSupabaseClient = () => createClientComponentClient();
export default createSupabaseClient;