.class public Lcom/instagram/android/directshare/widget/RecipientView;
.super Landroid/widget/FrameLayout;
.source "RecipientView.java"


# static fields
.field private static final a:Lcom/instagram/common/ui/a/a;


# instance fields
.field private b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/instagram/common/ui/a/a;

    invoke-direct {v0}, Lcom/instagram/common/ui/a/a;-><init>()V

    sput-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->a()V

    .line 37
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/instagram/android/directshare/widget/RecipientView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->layout_directshare_recipient:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/facebook/av;->avatar:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/widget/RecipientView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 42
    sget v0, Lcom/facebook/av;->badge:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/widget/RecipientView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(ZZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->permalink_badge_heart:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    .line 66
    :goto_0
    return-void

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 51
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->permalink_badge_commented:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    goto :goto_0

    .line 54
    :cond_1
    if-eqz p3, :cond_3

    .line 55
    if-eqz p4, :cond_2

    .line 56
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->permalink_badge_seen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    :goto_1
    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    sget-object v0, Lcom/instagram/android/directshare/widget/RecipientView;->a:Lcom/instagram/common/ui/a/a;

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/RecipientView;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    invoke-virtual {v0, p1}, Lcom/instagram/common/ui/widget/imageview/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 70
    return-void
.end method
