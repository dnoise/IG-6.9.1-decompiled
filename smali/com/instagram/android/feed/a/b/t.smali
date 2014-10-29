.class final Lcom/instagram/android/feed/a/b/t;
.super Ljava/lang/Object;
.source "MediaSetRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/ai;

.field final synthetic b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field final synthetic c:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/ai;Lcom/instagram/common/ui/widget/imageview/IgImageView;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/t;->a:Lcom/instagram/feed/d/ai;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/t;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object p3, p0, Lcom/instagram/android/feed/a/b/t;->c:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/t;->a:Lcom/instagram/feed/d/ai;

    check-cast v0, Lcom/instagram/android/g/b;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/g/b;)V

    .line 98
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/t;->b:Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/t;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/t;->a:Lcom/instagram/feed/d/ai;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/feed/a/b/s;->a(Landroid/widget/ImageView;Landroid/widget/CheckBox;Lcom/instagram/feed/d/ai;)V

    .line 99
    return-void
.end method
