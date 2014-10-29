.class final Lcom/instagram/android/fragment/cq;
.super Lcom/instagram/feed/a/a;
.source "LocationFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cp;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cp;Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instagram/android/fragment/cq;->a:Lcom/instagram/android/fragment/cp;

    invoke-direct {p0, p2, p3}, Lcom/instagram/feed/a/a;-><init>(Lcom/instagram/feed/f/a;Z)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    const-string v0, "feed/location/%s/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/android/fragment/cq;->a:Lcom/instagram/android/fragment/cp;

    invoke-static {v3}, Lcom/instagram/android/fragment/cp;->a(Lcom/instagram/android/fragment/cp;)Lcom/instagram/venue/model/Venue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/venue/model/Venue;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
