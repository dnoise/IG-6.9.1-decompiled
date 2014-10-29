.class public final Lcom/instagram/feed/a/m;
.super Lcom/instagram/feed/a/a;
.source "UserMediaFeedRequest.java"


# instance fields
.field private a:Lcom/instagram/user/c/a;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/f/a;ZLcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/instagram/feed/a/a;-><init>(Lcom/instagram/feed/f/a;Z)V

    .line 16
    iput-object p3, p0, Lcom/instagram/feed/a/m;->a:Lcom/instagram/user/c/a;

    .line 17
    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    const-string v0, "feed/user/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/feed/a/m;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
