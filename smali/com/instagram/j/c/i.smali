.class final Lcom/instagram/j/c/i;
.super Ljava/lang/Object;
.source "NewsfeedFragment.java"

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
.field final synthetic a:Lcom/instagram/j/c/g;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/j/c/i;->a:Lcom/instagram/j/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/j/c/i;->a:Lcom/instagram/j/c/g;

    invoke-static {v0}, Lcom/instagram/j/c/g;->c(Lcom/instagram/j/c/g;)V

    .line 98
    return-void
.end method

.method private a(Lcom/instagram/user/c/g;)Z
    .locals 2
    .parameter

    .prologue
    .line 92
    iget-object v0, p1, Lcom/instagram/user/c/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/j/c/i;->a:Lcom/instagram/j/c/g;

    invoke-static {v1}, Lcom/instagram/j/c/g;->b(Lcom/instagram/j/c/g;)Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

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
    .line 88
    check-cast p1, Lcom/instagram/user/c/g;

    invoke-direct {p0, p1}, Lcom/instagram/j/c/i;->a(Lcom/instagram/user/c/g;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/instagram/j/c/i;->a()V

    return-void
.end method
