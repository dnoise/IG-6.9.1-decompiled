.class final Lcom/instagram/feed/e/a/a/d;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"

# interfaces
.implements Lcom/instagram/user/follow/g;


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/g;

.field final synthetic b:Lcom/instagram/user/d/a;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/instagram/feed/e/a/a/d;->a:Lcom/instagram/common/analytics/g;

    iput-object p2, p0, Lcom/instagram/feed/e/a/a/d;->b:Lcom/instagram/user/d/a;

    iput p3, p0, Lcom/instagram/feed/e/a/a/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/feed/e/a/a/d;->a:Lcom/instagram/common/analytics/g;

    iget-object v1, p0, Lcom/instagram/feed/e/a/a/d;->b:Lcom/instagram/user/d/a;

    iget v2, p0, Lcom/instagram/feed/e/a/a/d;->c:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/user/d/b;->c(Lcom/instagram/common/analytics/g;Lcom/instagram/user/d/a;IZ)V

    .line 138
    return-void
.end method
