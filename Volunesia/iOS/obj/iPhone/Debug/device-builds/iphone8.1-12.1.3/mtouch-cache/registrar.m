#define DEBUG 1
#include <xamarin/xamarin.h>
#include "registrar.h"
extern "C" {
static id native_to_managed_trampoline_1 (id self, SEL _cmd, MonoMethod **managed_method_ptr, bool* call_super, uint32_t token_ref)
{
	uint8_t flags = NSObjectFlagsNativeRef;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	bool has_nsobject = xamarin_has_nsobject (self, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	if (has_nsobject) {
		*call_super = true;
		goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	mthis = mono_object_new (mono_domain_get (), mono_method_get_class (managed_method));
	xamarin_set_nsobject_handle (mthis, self);
	xamarin_set_nsobject_flags (mthis, flags);
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);
	xamarin_create_managed_ref (self, mthis, true);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return self;
}


static void native_to_managed_trampoline_2 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_3 (id self, SEL _cmd, MonoMethod **managed_method_ptr, void * p0, uint32_t token_ref)
{
	void * a0 = p0;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	arg_ptrs [0] = &a0;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static UIWindow * native_to_managed_trampoline_4 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIWindow * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_5 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIWindow * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static BOOL native_to_managed_trampoline_6 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, NSDictionary * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	BOOL res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	res = *(BOOL *) mono_object_unbox ((MonoObject *) retval);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_7 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIApplication * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIButton * native_to_managed_trampoline_8 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIButton * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_9 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIButton * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UIImageView * native_to_managed_trampoline_10 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UIImageView * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_11 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIImageView * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_12 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UIStoryboardSegue * p0, NSObject * p1, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	NSObject *nsobj1 = NULL;
	MonoObject *mobj1 = NULL;
	int32_t created1 = false;
	MonoType *paramtype1 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [2];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;
	nsobj1 = (NSObject *) p1;
	if (nsobj1) {
		paramtype1 = xamarin_get_parameter_type (managed_method, 1);
		mobj1 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj1, false, paramtype1, &created1, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj1, _cmd, self, nsobj1, 1, mono_class_from_mono_type (paramtype1), managed_method);
	}
	arg_ptrs [1] = mobj1;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UILabel * native_to_managed_trampoline_13 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UILabel * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_14 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UILabel * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static UITextField * native_to_managed_trampoline_15 (id self, SEL _cmd, MonoMethod **managed_method_ptr, uint32_t token_ref)
{
	MonoObject *retval = NULL;
	guint32 exception_gchandle = 0;
	UITextField * res = {0};
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [0];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	retval = mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

	if (!retval) {
		res = NULL;
	} else {
		id retobj;
		retobj = xamarin_get_nsobject_handle (retval);
		xamarin_framework_peer_lock ();
		[retobj retain];
		xamarin_framework_peer_unlock ();
		[retobj autorelease];
		mt_dummy_use (retval);
		res = retobj;
	}

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return res;
}


static void native_to_managed_trampoline_16 (id self, SEL _cmd, MonoMethod **managed_method_ptr, UITextField * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	MonoObject *mthis = NULL;
	if (self) {
		mthis = xamarin_get_managed_object_for_ptr_fast (self, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
	}
	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	xamarin_check_for_gced_object (mthis, _cmd, self, managed_method, &exception_gchandle);
	if (exception_gchandle != 0) goto exception_handling;
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, mthis, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}


static void native_to_managed_trampoline_17 (id self, SEL _cmd, MonoMethod **managed_method_ptr, NSObject * p0, uint32_t token_ref)
{
	NSObject *nsobj0 = NULL;
	MonoObject *mobj0 = NULL;
	int32_t created0 = false;
	MonoType *paramtype0 = NULL;
	guint32 exception_gchandle = 0;
	MonoMethod *managed_method = *managed_method_ptr;
	void *arg_ptrs [1];
	MONO_ASSERT_GC_SAFE;
	MONO_THREAD_ATTACH;

	if (!managed_method) {
		MonoReflectionMethod *reflection_method = xamarin_get_method_from_token (token_ref, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		managed_method = xamarin_get_reflection_method_method (reflection_method);
		*managed_method_ptr = managed_method;
	}
	nsobj0 = (NSObject *) p0;
	if (nsobj0) {
		paramtype0 = xamarin_get_parameter_type (managed_method, 0);
		mobj0 = xamarin_get_nsobject_with_type_for_ptr_created (nsobj0, false, paramtype0, &created0, _cmd, managed_method, &exception_gchandle);
		if (exception_gchandle != 0) goto exception_handling;
		xamarin_verify_parameter (mobj0, _cmd, self, nsobj0, 0, mono_class_from_mono_type (paramtype0), managed_method);
	}
	arg_ptrs [0] = mobj0;

	mono_runtime_invoke (managed_method, NULL, arg_ptrs, NULL);

exception_handling:;
	MONO_THREAD_DETACH;
	if (exception_gchandle != 0)
		xamarin_process_managed_exception_gchandle (exception_gchandle);
	return;
}




#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation UIApplicationDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x21206);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

@interface UIKit_UIControlEventProxy : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) BridgeSelector;
	-(BOOL) conformsToProtocol:(void *)p0;
@end

@implementation UIKit_UIControlEventProxy {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) BridgeSelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x1DE06);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}
@end

@interface Foundation_NSDispatcher : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	-(void) xamarinApplySelector;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation Foundation_NSDispatcher {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x2A606);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x2A506);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSSynchronizationContextDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSSynchronizationContextDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x2A906);
	}
@end

@interface Foundation_NSAsyncDispatcher : Foundation_NSDispatcher {
}
	-(void) xamarinApplySelector;
	-(id) init;
@end

@implementation Foundation_NSAsyncDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x2AB06);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x2AA06);
		if (call_super && rv) {
			struct objc_super super = {  rv, [Foundation_NSDispatcher class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@interface __MonoMac_NSAsyncSynchronizationContextDispatcher : Foundation_NSAsyncDispatcher {
}
	-(void) xamarinApplySelector;
@end

@implementation __MonoMac_NSAsyncSynchronizationContextDispatcher {
}

	-(void) xamarinApplySelector
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x2AD06);
	}
@end

@implementation AppDelegate {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIWindow *) window
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_4 (self, _cmd, &managed_method, 0x6600);
	}

	-(void) setWindow:(UIWindow *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_5 (self, _cmd, &managed_method, p0, 0x6700);
	}

	-(BOOL) application:(UIApplication *)p0 didFinishLaunchingWithOptions:(NSDictionary *)p1
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_6 (self, _cmd, &managed_method, p0, p1, 0x6800);
	}

	-(void) applicationWillResignActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, 0x6900);
	}

	-(void) applicationDidEnterBackground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, 0x6A00);
	}

	-(void) applicationWillEnterForeground:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, 0x6B00);
	}

	-(void) applicationDidBecomeActive:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, 0x6C00);
	}

	-(void) applicationWillTerminate:(UIApplication *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_7 (self, _cmd, &managed_method, p0, 0x6D00);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x6E00);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end

@implementation ViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) Button
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0x7400);
	}

	-(void) setButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x7500);
	}

	-(UIImageView *) BackgroundImageView
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, 0x7600);
	}

	-(void) setBackgroundImageView:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, 0x7700);
	}

	-(UIButton *) LoginButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0x7800);
	}

	-(void) setLoginButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x7900);
	}

	-(UIImageView *) LogoImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, 0x7A00);
	}

	-(void) setLogoImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, 0x7B00);
	}

	-(UIButton *) SignupButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0x7C00);
	}

	-(void) setSignupButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x7D00);
	}

	-(void) viewDidLoad
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x7000);
	}

	-(void) didReceiveMemoryWarning
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_2 (self, _cmd, &managed_method, 0x7200);
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0x7300);
	}

	-(void) LoginButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x7E00);
	}

	-(void) SignupButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x7F00);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}
@end

@implementation RegistrationViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) BackButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0x8600);
	}

	-(void) setBackButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x8700);
	}

	-(UIImageView *) BackgroundImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, 0x8800);
	}

	-(void) setBackgroundImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, 0x8900);
	}

	-(UIButton *) ContinueButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0x8A00);
	}

	-(void) setContinueButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x8B00);
	}

	-(UILabel *) FirstNameLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0x8C00);
	}

	-(void) setFirstNameLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0x8D00);
	}

	-(UITextField *) FirstNameTextfield
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, 0x8E00);
	}

	-(void) setFirstNameTextfield:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, 0x8F00);
	}

	-(UILabel *) LastNameLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0x9000);
	}

	-(void) setLastNameLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0x9100);
	}

	-(UITextField *) LastNameTextfield
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, 0x9200);
	}

	-(void) setLastNameTextfield:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, 0x9300);
	}

	-(UILabel *) QuestionLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0x9400);
	}

	-(void) setQuestionLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0x9500);
	}

	-(UILabel *) StatementLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0x9600);
	}

	-(void) setStatementLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0x9700);
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0x8400);
	}

	-(void) BackButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x9800);
	}

	-(void) ContinueButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0x9900);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}
@end

@implementation UserTypeSelectionController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) BackButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0xA600);
	}

	-(void) setBackButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xA700);
	}

	-(UIImageView *) BackgroundImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, 0xA800);
	}

	-(void) setBackgroundImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, 0xA900);
	}

	-(UIButton *) NonprofitButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0xAA00);
	}

	-(void) setNonprofitButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xAB00);
	}

	-(UILabel *) QuestionLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0xAC00);
	}

	-(void) setQuestionLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0xAD00);
	}

	-(UIButton *) VolunteerButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0xAE00);
	}

	-(void) setVolunteerButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xAF00);
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0xA400);
	}

	-(void) BackButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xB000);
	}

	-(void) NonprofitButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xB100);
	}

	-(void) VolunteerButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xB200);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}
@end

@implementation EmailRegistrationViewController {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	-(UIButton *) BackButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0xBC00);
	}

	-(void) setBackButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xBD00);
	}

	-(UIImageView *) BackgroundImage
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_10 (self, _cmd, &managed_method, 0xBE00);
	}

	-(void) setBackgroundImage:(UIImageView *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_11 (self, _cmd, &managed_method, p0, 0xBF00);
	}

	-(UILabel *) ConfirmPasswordLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0xC000);
	}

	-(void) setConfirmPasswordLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0xC100);
	}

	-(UITextField *) ConfirmPasswordTextfield
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, 0xC200);
	}

	-(void) setConfirmPasswordTextfield:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, 0xC300);
	}

	-(UIButton *) ContinueButton
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_8 (self, _cmd, &managed_method, 0xC400);
	}

	-(void) setContinueButton:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xC500);
	}

	-(UILabel *) EmailLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0xC600);
	}

	-(void) setEmailLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0xC700);
	}

	-(UITextField *) EmailTextfield
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, 0xC800);
	}

	-(void) setEmailTextfield:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, 0xC900);
	}

	-(UILabel *) LoginRequestLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0xCA00);
	}

	-(void) setLoginRequestLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0xCB00);
	}

	-(UITextField *) PasswordTextfield
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_15 (self, _cmd, &managed_method, 0xCC00);
	}

	-(void) setPasswordTextfield:(UITextField *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_16 (self, _cmd, &managed_method, p0, 0xCD00);
	}

	-(UILabel *) PaswordLabel
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_13 (self, _cmd, &managed_method, 0xCE00);
	}

	-(void) setPaswordLabel:(UILabel *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_14 (self, _cmd, &managed_method, p0, 0xCF00);
	}

	-(void) prepareForSegue:(UIStoryboardSegue *)p0 sender:(NSObject *)p1
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_12 (self, _cmd, &managed_method, p0, p1, 0xBA00);
	}

	-(void) BackButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xD000);
	}

	-(void) ContinueButton_TouchUpInside:(UIButton *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_9 (self, _cmd, &managed_method, p0, 0xD100);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}
@end

@interface __NSObject_Disposer : NSObject {
}
	-(void) release;
	-(id) retain;
	-(int) xamarinGetGCHandle;
	-(void) xamarinSetGCHandle: (int) gchandle;
	+(void) drain:(NSObject *)p0;
	-(BOOL) conformsToProtocol:(void *)p0;
	-(id) init;
@end

@implementation __NSObject_Disposer {
	XamarinObject __monoObjectGCHandle;
}
	-(void) release
	{
		xamarin_release_trampoline (self, _cmd);
	}

	-(id) retain
	{
		return xamarin_retain_trampoline (self, _cmd);
	}

	-(int) xamarinGetGCHandle
	{
		return __monoObjectGCHandle.gc_handle;
	}

	-(void) xamarinSetGCHandle: (int) gc_handle
	{
		__monoObjectGCHandle.gc_handle = gc_handle;
		__monoObjectGCHandle.native_object = self;
	}


	+(void) drain:(NSObject *)p0
	{
		static MonoMethod *managed_method = NULL;
		native_to_managed_trampoline_17 (self, _cmd, &managed_method, p0, 0x31106);
	}

	-(BOOL) conformsToProtocol:(void *)p0
	{
		static MonoMethod *managed_method = NULL;
		return native_to_managed_trampoline_3 (self, _cmd, &managed_method, p0, 0x2E906);
	}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x30F06);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end









#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wobjc-protocol-property-synthesis"
#pragma clang diagnostic ignored "-Wobjc-property-implementation"
@implementation ApiDefinition__Firebase_Auth_AuthUIDelegate {
}

	-(id) init
	{
		static MonoMethod *managed_method = NULL;
		bool call_super = false;
		id rv = native_to_managed_trampoline_1 (self, _cmd, &managed_method, &call_super, 0x18B08);
		if (call_super && rv) {
			struct objc_super super = {  rv, [NSObject class] };
			rv = ((id (*)(objc_super*, SEL)) objc_msgSendSuper) (&super, @selector (init));
		}
		return rv;
	}
@end
#pragma clang diagnostic pop

























	static MTClassMap __xamarin_class_map [] = {
		{ NULL, 0x8506 /* #0 'NSObject' => 'Foundation.NSObject, Xamarin.iOS' */ },
		{ NULL, 0x6406 /* #1 'UIApplicationDelegate' => 'UIKit.UIApplicationDelegate, Xamarin.iOS' */ },
		{ NULL, 0x6806 /* #2 'UIResponder' => 'UIKit.UIResponder, Xamarin.iOS' */ },
		{ NULL, 0x5D06 /* #3 'UIViewController' => 'UIKit.UIViewController, Xamarin.iOS' */ },
		{ NULL, 0x5506 /* #4 'UIApplication' => 'UIKit.UIApplication, Xamarin.iOS' */ },
		{ NULL, 0x5C06 /* #5 'UIView' => 'UIKit.UIView, Xamarin.iOS' */ },
		{ NULL, 0x5806 /* #6 'UIControl' => 'UIKit.UIControl, Xamarin.iOS' */ },
		{ NULL, 0x5606 /* #7 'UIButton' => 'UIKit.UIButton, Xamarin.iOS' */ },
		{ NULL, 0x5706 /* #8 'UIKit_UIControlEventProxy' => 'UIKit.UIControlEventProxy, Xamarin.iOS' */ },
		{ NULL, 0x5A06 /* #9 'UIStoryboardSegue' => 'UIKit.UIStoryboardSegue, Xamarin.iOS' */ },
		{ NULL, 0x5B06 /* #10 'UITextField' => 'UIKit.UITextField, Xamarin.iOS' */ },
		{ NULL, 0x5E06 /* #11 'UIWindow' => 'UIKit.UIWindow, Xamarin.iOS' */ },
		{ NULL, 0x6006 /* #12 'UIAlertAction' => 'UIKit.UIAlertAction, Xamarin.iOS' */ },
		{ NULL, 0x6206 /* #13 'UIAlertController' => 'UIKit.UIAlertController, Xamarin.iOS' */ },
		{ NULL, 0x6606 /* #14 'UIImageView' => 'UIKit.UIImageView, Xamarin.iOS' */ },
		{ NULL, 0x6706 /* #15 'UILabel' => 'UIKit.UILabel, Xamarin.iOS' */ },
		{ NULL, 0x6A06 /* #16 'NSArray' => 'Foundation.NSArray, Xamarin.iOS' */ },
		{ NULL, 0x6D06 /* #17 'NSDate' => 'Foundation.NSDate, Xamarin.iOS' */ },
		{ NULL, 0x7306 /* #18 'NSNull' => 'Foundation.NSNull, Xamarin.iOS' */ },
		{ NULL, 0x7406 /* #19 'NSRunLoop' => 'Foundation.NSRunLoop, Xamarin.iOS' */ },
		{ NULL, 0x7506 /* #20 'NSString' => 'Foundation.NSString, Xamarin.iOS' */ },
		{ NULL, 0x7606 /* #21 'NSURL' => 'Foundation.NSUrl, Xamarin.iOS' */ },
		{ NULL, 0x7D06 /* #22 'Foundation_NSDispatcher' => 'Foundation.NSDispatcher, Xamarin.iOS' */ },
		{ NULL, 0x7E06 /* #23 '__MonoMac_NSSynchronizationContextDispatcher' => 'Foundation.NSSynchronizationContextDispatcher, Xamarin.iOS' */ },
		{ NULL, 0x7F06 /* #24 'Foundation_NSAsyncDispatcher' => 'Foundation.NSAsyncDispatcher, Xamarin.iOS' */ },
		{ NULL, 0x8006 /* #25 '__MonoMac_NSAsyncSynchronizationContextDispatcher' => 'Foundation.NSAsyncSynchronizationContextDispatcher, Xamarin.iOS' */ },
		{ NULL, 0x8106 /* #26 'NSAutoreleasePool' => 'Foundation.NSAutoreleasePool, Xamarin.iOS' */ },
		{ NULL, 0x8206 /* #27 'NSError' => 'Foundation.NSError, Xamarin.iOS' */ },
		{ NULL, 0x8906 /* #28 'NSValue' => 'Foundation.NSValue, Xamarin.iOS' */ },
		{ NULL, 0x8306 /* #29 'NSNumber' => 'Foundation.NSNumber, Xamarin.iOS' */ },
		{ NULL, 0x8F06 /* #30 'NSEnumerator' => 'Foundation.NSEnumerator, Xamarin.iOS' */ },
		{ NULL, 0x9006 /* #31 'NSException' => 'Foundation.NSException, Xamarin.iOS' */ },
		{ NULL, 0x6B06 /* #32 'NSData' => 'Foundation.NSData, Xamarin.iOS' */ },
		{ NULL, 0x6E06 /* #33 'NSDictionary' => 'Foundation.NSDictionary, Xamarin.iOS' */ },
		{ NULL, 0x1400 /* #34 'AppDelegate' => 'Volunesia.iOS.AppDelegate, Volunesia.iOS' */ },
		{ NULL, 0x1500 /* #35 'ViewController' => 'Volunesia.iOS.ViewController, Volunesia.iOS' */ },
		{ NULL, 0x1700 /* #36 'RegistrationViewController' => 'Volunesia.iOS.RegistrationViewController, Volunesia.iOS' */ },
		{ NULL, 0x1800 /* #37 'UserTypeSelectionController' => 'Volunesia.iOS.UserTypeSelectionController, Volunesia.iOS' */ },
		{ NULL, 0x1900 /* #38 'EmailRegistrationViewController' => 'Volunesia.iOS.EmailRegistrationViewController, Volunesia.iOS' */ },
		{ NULL, 0x8706 /* #39 '__NSObject_Disposer' => 'Foundation.NSObject+NSObject_Disposer, Xamarin.iOS' */ },
		{ NULL, 0x5908 /* #40 'FIRActionCodeInfo' => 'Firebase.Auth.ActionCodeInfo, Firebase.Auth' */ },
		{ NULL, 0x5A08 /* #41 'FIRActionCodeSettings' => 'Firebase.Auth.ActionCodeSettings, Firebase.Auth' */ },
		{ NULL, 0x5B08 /* #42 'FIRAdditionalUserInfo' => 'Firebase.Auth.AdditionalUserInfo, Firebase.Auth' */ },
		{ NULL, 0x5C08 /* #43 'FIRAuthCredential' => 'Firebase.Auth.AuthCredential, Firebase.Auth' */ },
		{ NULL, 0x5D08 /* #44 'FIRAuthDataResult' => 'Firebase.Auth.AuthDataResult, Firebase.Auth' */ },
		{ NULL, 0x5E08 /* #45 'FIRAuthSettings' => 'Firebase.Auth.AuthSettings, Firebase.Auth' */ },
		{ NULL, 0x5F08 /* #46 'FIRAuthTokenResult' => 'Firebase.Auth.AuthTokenResult, Firebase.Auth' */ },
		{ NULL, 0x6208 /* #47 'ApiDefinition__Firebase_Auth_AuthUIDelegate' => 'Firebase.Auth.AuthUIDelegate, Firebase.Auth' */ },
		{ NULL, 0x6308 /* #48 'FIREmailAuthProvider' => 'Firebase.Auth.EmailAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x6408 /* #49 'FIRFacebookAuthProvider' => 'Firebase.Auth.FacebookAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x6508 /* #50 'FIRGitHubAuthProvider' => 'Firebase.Auth.GitHubAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x6608 /* #51 'FIRGoogleAuthProvider' => 'Firebase.Auth.GoogleAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x6708 /* #52 'FIROAuthProvider' => 'Firebase.Auth.OAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x6808 /* #53 'FIRPhoneAuthCredential' => 'Firebase.Auth.PhoneAuthCredential, Firebase.Auth' */ },
		{ NULL, 0x6B08 /* #54 'FIRTwitterAuthProvider' => 'Firebase.Auth.TwitterAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x7F08 /* #55 'FIRUserMetadata' => 'Firebase.Auth.UserMetadata, Firebase.Auth' */ },
		{ NULL, 0x3F08 /* #56 'FIRAuth' => 'Firebase.Auth.Auth, Firebase.Auth' */ },
		{ NULL, 0x6908 /* #57 'FIRPhoneAuthProvider' => 'Firebase.Auth.PhoneAuthProvider, Firebase.Auth' */ },
		{ NULL, 0x6C08 /* #58 'FIRUser' => 'Firebase.Auth.User, Firebase.Auth' */ },
		{ NULL, 0x8008 /* #59 'FIRUserProfileChangeRequest' => 'Firebase.Auth.UserProfileChangeRequest, Firebase.Auth' */ },
		{ NULL, 0x80A /* #60 'FIRApp' => 'Firebase.Core.App, Firebase.Core' */ },
		{ NULL, 0xA0A /* #61 'FIRAnalyticsConfiguration' => 'Firebase.Core.AnalyticsConfiguration, Firebase.Core' */ },
		{ NULL, 0xB0A /* #62 'FIRConfiguration' => 'Firebase.Core.Configuration, Firebase.Core' */ },
		{ NULL, 0xC0A /* #63 'FIROptions' => 'Firebase.Core.Options, Firebase.Core' */ },
		{ NULL, 0x1C0C /* #64 'FIRDatabaseQuery' => 'Firebase.Database.DatabaseQuery, Firebase.Database' */ },
		{ NULL, 0x160C /* #65 'FIRDatabaseReference' => 'Firebase.Database.DatabaseReference, Firebase.Database' */ },
		{ NULL, 0x170C /* #66 'FIRDataSnapshot' => 'Firebase.Database.DataSnapshot, Firebase.Database' */ },
		{ NULL, 0x180C /* #67 'FIRMutableData' => 'Firebase.Database.MutableData, Firebase.Database' */ },
		{ NULL, 0x1B0C /* #68 'FIRDatabase' => 'Firebase.Database.Database, Firebase.Database' */ },
		{ NULL, 0x1D0C /* #69 'FIRServerValue' => 'Firebase.Database.ServerValue, Firebase.Database' */ },
		{ NULL, 0x1E0C /* #70 'FIRTransactionResult' => 'Firebase.Database.TransactionResult, Firebase.Database' */ },
		{ NULL, 0 },
	};

	static const MTManagedClassMap __xamarin_skipped_map [] = {
		{ 0x7006, 33 /* 'Foundation.NSDictionary`2' => 'Foundation.NSDictionary' */ },
	};

	static const char *__xamarin_registration_assemblies []= {
		"Volunesia.iOS", 
		"mscorlib", 
		"System", 
		"Xamarin.iOS", 
		"Firebase.Auth", 
		"Firebase.Core", 
		"Firebase.Database"
	};

	static const MTProtocolWrapperMap __xamarin_protocol_wrapper_map [] = {
		{ 0x6008 /* Firebase.Auth.IAuthUIDelegate */, 0x6108 /* AuthUIDelegateWrapper */ },
		{ 0x7D08 /* Firebase.Auth.IUserInfo */, 0x7E08 /* UserInfoWrapper */ },
		{ 0x8D06 /* Foundation.INSCopying */, 0x8E06 /* NSCopyingWrapper */ },
		{ 0x9106 /* Foundation.INSObjectProtocol */, 0x9206 /* NSObjectProtocolWrapper */ },
	};

	static struct MTRegistrationMap __xamarin_registration_map = {
		__xamarin_registration_assemblies,
		__xamarin_class_map,
		NULL,
		__xamarin_skipped_map,
		__xamarin_protocol_wrapper_map,
		{ NULL, NULL },
		7,
		71,
		37,
		0,
		1,
		4,
		0
	};

void xamarin_create_classes () {
	__xamarin_class_map [0].handle = objc_getClass ("NSObject");
	__xamarin_class_map [1].handle = objc_getClass ("UIApplicationDelegate");
	__xamarin_class_map [2].handle = objc_getClass ("UIResponder");
	__xamarin_class_map [3].handle = objc_getClass ("UIViewController");
	__xamarin_class_map [4].handle = objc_getClass ("UIApplication");
	__xamarin_class_map [5].handle = objc_getClass ("UIView");
	__xamarin_class_map [6].handle = objc_getClass ("UIControl");
	__xamarin_class_map [7].handle = objc_getClass ("UIButton");
	__xamarin_class_map [8].handle = objc_getClass ("UIKit_UIControlEventProxy");
	__xamarin_class_map [9].handle = objc_getClass ("UIStoryboardSegue");
	__xamarin_class_map [10].handle = objc_getClass ("UITextField");
	__xamarin_class_map [11].handle = objc_getClass ("UIWindow");
	__xamarin_class_map [12].handle = objc_getClass ("UIAlertAction");
	__xamarin_class_map [13].handle = objc_getClass ("UIAlertController");
	__xamarin_class_map [14].handle = objc_getClass ("UIImageView");
	__xamarin_class_map [15].handle = objc_getClass ("UILabel");
	__xamarin_class_map [16].handle = objc_getClass ("NSArray");
	__xamarin_class_map [17].handle = objc_getClass ("NSDate");
	__xamarin_class_map [18].handle = objc_getClass ("NSNull");
	__xamarin_class_map [19].handle = objc_getClass ("NSRunLoop");
	__xamarin_class_map [20].handle = objc_getClass ("NSString");
	__xamarin_class_map [21].handle = objc_getClass ("NSURL");
	__xamarin_class_map [22].handle = objc_getClass ("Foundation_NSDispatcher");
	__xamarin_class_map [23].handle = objc_getClass ("__MonoMac_NSSynchronizationContextDispatcher");
	__xamarin_class_map [24].handle = objc_getClass ("Foundation_NSAsyncDispatcher");
	__xamarin_class_map [25].handle = objc_getClass ("__MonoMac_NSAsyncSynchronizationContextDispatcher");
	__xamarin_class_map [26].handle = objc_getClass ("NSAutoreleasePool");
	__xamarin_class_map [27].handle = objc_getClass ("NSError");
	__xamarin_class_map [28].handle = objc_getClass ("NSValue");
	__xamarin_class_map [29].handle = objc_getClass ("NSNumber");
	__xamarin_class_map [30].handle = objc_getClass ("NSEnumerator");
	__xamarin_class_map [31].handle = objc_getClass ("NSException");
	__xamarin_class_map [32].handle = objc_getClass ("NSData");
	__xamarin_class_map [33].handle = objc_getClass ("NSDictionary");
	__xamarin_class_map [34].handle = [AppDelegate class];
	__xamarin_class_map [35].handle = [ViewController class];
	__xamarin_class_map [36].handle = [RegistrationViewController class];
	__xamarin_class_map [37].handle = [UserTypeSelectionController class];
	__xamarin_class_map [38].handle = [EmailRegistrationViewController class];
	__xamarin_class_map [39].handle = objc_getClass ("__NSObject_Disposer");
	__xamarin_class_map [40].handle = [FIRActionCodeInfo class];
	__xamarin_class_map [41].handle = [FIRActionCodeSettings class];
	__xamarin_class_map [42].handle = [FIRAdditionalUserInfo class];
	__xamarin_class_map [43].handle = [FIRAuthCredential class];
	__xamarin_class_map [44].handle = [FIRAuthDataResult class];
	__xamarin_class_map [45].handle = [FIRAuthSettings class];
	__xamarin_class_map [46].handle = [FIRAuthTokenResult class];
	__xamarin_class_map [47].handle = [ApiDefinition__Firebase_Auth_AuthUIDelegate class];
	__xamarin_class_map [48].handle = [FIREmailAuthProvider class];
	__xamarin_class_map [49].handle = [FIRFacebookAuthProvider class];
	__xamarin_class_map [50].handle = [FIRGitHubAuthProvider class];
	__xamarin_class_map [51].handle = [FIRGoogleAuthProvider class];
	__xamarin_class_map [52].handle = [FIROAuthProvider class];
	__xamarin_class_map [53].handle = [FIRPhoneAuthCredential class];
	__xamarin_class_map [54].handle = [FIRTwitterAuthProvider class];
	__xamarin_class_map [55].handle = [FIRUserMetadata class];
	__xamarin_class_map [56].handle = [FIRAuth class];
	__xamarin_class_map [57].handle = [FIRPhoneAuthProvider class];
	__xamarin_class_map [58].handle = [FIRUser class];
	__xamarin_class_map [59].handle = [FIRUserProfileChangeRequest class];
	__xamarin_class_map [60].handle = [FIRApp class];
	__xamarin_class_map [61].handle = [FIRAnalyticsConfiguration class];
	__xamarin_class_map [62].handle = [FIRConfiguration class];
	__xamarin_class_map [63].handle = [FIROptions class];
	__xamarin_class_map [64].handle = [FIRDatabaseQuery class];
	__xamarin_class_map [65].handle = [FIRDatabaseReference class];
	__xamarin_class_map [66].handle = [FIRDataSnapshot class];
	__xamarin_class_map [67].handle = [FIRMutableData class];
	__xamarin_class_map [68].handle = [FIRDatabase class];
	__xamarin_class_map [69].handle = [FIRServerValue class];
	__xamarin_class_map [70].handle = [FIRTransactionResult class];
	xamarin_add_registration_map (&__xamarin_registration_map);
}


} /* extern "C" */
