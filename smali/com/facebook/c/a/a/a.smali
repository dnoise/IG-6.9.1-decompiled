.class public final Lcom/facebook/c/a/a/a;
.super Ljava/lang/Object;
.source "SystemPropertiesInternal.java"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcom/facebook/c/a/a/b;->a()Lcom/facebook/c/a/a/b;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, v0, Lcom/facebook/c/a/a/b;->a:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/c/a/a/a;->c:Ljava/lang/reflect/Method;

    .line 63
    iget-object v1, v0, Lcom/facebook/c/a/a/b;->b:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/facebook/c/a/a/a;->a:Ljava/lang/reflect/Method;

    .line 64
    iget-object v0, v0, Lcom/facebook/c/a/a/b;->c:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/facebook/c/a/a/a;->b:Ljava/lang/reflect/Method;

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    sput-object v1, Lcom/facebook/c/a/a/a;->c:Ljava/lang/reflect/Method;

    .line 68
    sput-object v1, Lcom/facebook/c/a/a/a;->a:Ljava/lang/reflect/Method;

    .line 69
    sput-object v1, Lcom/facebook/c/a/a/a;->b:Ljava/lang/reflect/Method;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    if-nez p0, :cond_0

    .line 129
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/c/a/a/a;->d:Z

    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/facebook/c/a;->a(Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 78
    sget-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    if-nez v0, :cond_1

    .line 79
    const-string v0, ""

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    sget-object v0, Lcom/facebook/c/a/a/a;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    if-nez v0, :cond_0

    .line 84
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    sget-boolean v0, Lcom/facebook/c/a/a/a;->d:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/facebook/c/a/a/a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/c/a/a/a;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
