.class public final Lcom/instagram/android/feed/e/h;
.super Ljava/lang/Object;
.source "LikeUtil.java"


# direct methods
.method private static a()Lcom/instagram/api/j/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/instagram/android/feed/e/j;

    invoke-direct {v0}, Lcom/instagram/android/feed/e/j;-><init>()V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/instagram/l/a/b;->b()I

    move-result v1

    .line 98
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    sget v2, Lcom/facebook/az;->double_tap_to_like_hint:I

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 100
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 101
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/l/a/b;->a(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/ab;Lcom/instagram/feed/g/a;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    sget v0, Lcom/instagram/android/g/g;->a:I

    if-ne p5, v0, :cond_0

    sget v0, Lcom/instagram/feed/d/o;->a:I

    if-ne p4, v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;)V

    .line 50
    :cond_0
    sget v0, Lcom/instagram/android/g/g;->b:I

    if-ne p5, v0, :cond_1

    .line 51
    invoke-static {}, Lcom/instagram/l/a/b;->a()Lcom/instagram/l/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/a/b;->d()V

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->q()I

    move-result v0

    if-eq v0, p4, :cond_2

    .line 55
    invoke-static {p2, p4}, Lcom/instagram/feed/d/u;->a(Lcom/instagram/feed/d/l;I)V

    .line 57
    new-instance v0, Lcom/instagram/android/c/a/e;

    invoke-interface {p6}, Lcom/instagram/android/fragment/ab;->ac()Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/instagram/android/feed/e/h;->a()Lcom/instagram/api/j/a;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/instagram/android/c/a/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IILjava/util/Map;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/c/a/e;->g()V

    .line 67
    invoke-static {p2, p3, p4, p7}, Lcom/instagram/android/feed/e/h;->a(Lcom/instagram/feed/d/l;IILcom/instagram/feed/g/a;)V

    .line 69
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/instagram/common/a/a/k;Lcom/instagram/feed/d/l;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    sget v0, Lcom/instagram/android/g/g;->a:I

    if-ne p4, v0, :cond_0

    sget v0, Lcom/instagram/feed/d/o;->a:I

    if-ne p3, v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;)V

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->q()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 83
    invoke-static {p2, p3}, Lcom/instagram/feed/d/u;->a(Lcom/instagram/feed/d/l;I)V

    .line 84
    new-instance v0, Lcom/instagram/f/a/a/p;

    invoke-direct {v0, p2, p3}, Lcom/instagram/f/a/a/p;-><init>(Lcom/instagram/feed/d/l;I)V

    .line 85
    new-instance v1, Lcom/instagram/android/feed/e/i;

    invoke-direct {v1, p2}, Lcom/instagram/android/feed/e/i;-><init>(Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Lcom/instagram/f/a/a/p;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 91
    invoke-interface {p1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 93
    :cond_1
    return-void
.end method

.method private static a(Lcom/instagram/feed/d/l;IILcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    sget v0, Lcom/instagram/feed/d/o;->a:I

    if-ne p2, v0, :cond_0

    const-string v0, "like"

    .line 113
    :goto_0
    invoke-static {v0, p0, p1, p3}, Lcom/instagram/feed/c/g;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V

    .line 114
    return-void

    .line 111
    :cond_0
    const-string v0, "unlike"

    goto :goto_0
.end method
