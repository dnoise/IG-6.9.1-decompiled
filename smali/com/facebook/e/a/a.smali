.class public final Lcom/facebook/e/a/a;
.super Ljava/lang/Object;
.source "BLog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogUse",
        "StringFormatUse"
    }
.end annotation


# static fields
.field private static a:Lcom/facebook/e/a/b;

.field private static volatile b:I

.field private static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x5

    sput v0, Lcom/facebook/e/a/a;->b:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/e/a/a;->c:Ljava/util/List;

    return-void
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 54
    sput p0, Lcom/facebook/e/a/a;->b:I

    .line 55
    sget-object v0, Lcom/facebook/e/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1151
    sget v0, Lcom/facebook/e/a/a;->b:I

    if-gt v0, p0, :cond_0

    .line 1152
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 1153
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 867
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 868
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 869
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 981
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 982
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 983
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 924
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 925
    invoke-static {p1, p2}, Lcom/facebook/d/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 926
    sget-object v1, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v1, :cond_1

    .line 927
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 850
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 851
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 852
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 963
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 964
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 965
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 886
    invoke-static {p1, p2}, Lcom/facebook/d/f/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 887
    sget-object v1, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v1, :cond_1

    .line 888
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1018
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1019
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 1020
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    invoke-static {p0}, Lcom/facebook/e/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 999
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1000
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 1001
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1121
    sget v0, Lcom/facebook/e/a/a;->b:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 1122
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    if-eqz v0, :cond_1

    .line 1123
    sget-object v0, Lcom/facebook/e/a/a;->a:Lcom/facebook/e/a/b;

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    sget v0, Lcom/facebook/e/a/a;->b:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
