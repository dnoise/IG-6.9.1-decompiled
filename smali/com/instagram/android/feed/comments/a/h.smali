.class final Lcom/instagram/android/feed/comments/a/h;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/h;->b:Lcom/instagram/android/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/comments/a/h;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter "which"

    .prologue
    .line 667
    packed-switch p2, :pswitch_data_0

    .line 675
    :goto_0
    return-void

    .line 669
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/h;->a:Lcom/instagram/feed/d/b;

    iget-object v1, p0, Lcom/instagram/android/feed/comments/a/h;->b:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 672
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/h;->a:Lcom/instagram/feed/d/b;

    invoke-static {v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
