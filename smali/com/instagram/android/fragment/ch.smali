.class final Lcom/instagram/android/fragment/ch;
.super Lcom/instagram/feed/a/a;
.source "HashtagFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cf;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cf;Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/fragment/ch;->a:Lcom/instagram/android/fragment/cf;

    invoke-direct {p0, p2, p3}, Lcom/instagram/feed/a/a;-><init>(Lcom/instagram/feed/f/a;Z)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/fragment/ch;->a:Lcom/instagram/android/fragment/cf;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cf;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, "feed/tag/%s/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
