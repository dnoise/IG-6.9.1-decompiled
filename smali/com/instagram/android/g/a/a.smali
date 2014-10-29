.class public final Lcom/instagram/android/g/a/a;
.super Ljava/lang/Object;
.source "MediaIterators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/instagram/android/g/a/a;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/instagram/android/g/a/a;

    invoke-direct {v0}, Lcom/instagram/android/g/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/d/l;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->D()Lcom/instagram/feed/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/instagram/android/g/a/b;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/g/a/b;-><init>(Lcom/instagram/android/g/a/a;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final b(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/feed/d/l;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->am()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/instagram/android/g/a/c;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/g/a/c;-><init>(Lcom/instagram/android/g/a/a;Ljava/util/Iterator;)V

    return-object v1
.end method
