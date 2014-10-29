.class public final Lcom/instagram/feed/e/a/a/g;
.super Ljava/lang/Object;
.source "FeedAYSFBannerRowViewBinder.java"


# instance fields
.field private a:Landroid/view/View;

.field private final b:[Lcom/instagram/feed/e/a/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/feed/e/a/a/h;

    iput-object v0, p0, Lcom/instagram/feed/e/a/a/g;->b:[Lcom/instagram/feed/e/a/a/h;

    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/e/a/a/g;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/instagram/feed/e/a/a/g;->a:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/feed/e/a/a/g;)[Lcom/instagram/feed/e/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/feed/e/a/a/g;->b:[Lcom/instagram/feed/e/a/a/h;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/e/a/a/g;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/instagram/feed/e/a/a/g;->a:Landroid/view/View;

    return-object v0
.end method
