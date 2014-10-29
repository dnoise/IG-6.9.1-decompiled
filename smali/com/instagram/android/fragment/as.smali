.class final Lcom/instagram/android/fragment/as;
.super Lcom/instagram/feed/a/a;
.source "ExplorePhotosFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ar;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ar;Lcom/instagram/feed/f/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/instagram/android/fragment/as;->a:Lcom/instagram/android/fragment/ar;

    invoke-direct {p0, p2, p3}, Lcom/instagram/feed/a/a;-><init>(Lcom/instagram/feed/f/a;Z)V

    return-void
.end method


# virtual methods
.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "feed/popular/"

    return-object v0
.end method
