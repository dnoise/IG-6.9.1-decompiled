.class public abstract Lcom/instagram/api/e/a;
.super Lcom/instagram/common/a/a/a;
.source "AbstractFacebookGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType::",
        "Lcom/instagram/common/a/a/m;",
        ">",
        "Lcom/instagram/common/a/a/a",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/instagram/api/e/a;->a:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/instagram/common/a/c/b;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    .line 35
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/instagram/api/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/instagram/common/a/c/a;->c:I

    return v0
.end method

.method public final g_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "https://graph.facebook.com/"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/instagram/api/e/a;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/y/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
