.class final Lcom/instagram/android/fragment/fp;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/user/c/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/android/fragment/fp;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/instagram/android/fragment/fp;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->as()V

    .line 112
    return-void
.end method

.method private a(Lcom/instagram/user/c/g;)Z
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p1, Lcom/instagram/user/c/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/fragment/fp;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v1}, Lcom/instagram/android/fragment/fo;->b(Lcom/instagram/android/fragment/fo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 102
    check-cast p1, Lcom/instagram/user/c/g;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fp;->a(Lcom/instagram/user/c/g;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/instagram/android/fragment/fp;->a()V

    return-void
.end method
