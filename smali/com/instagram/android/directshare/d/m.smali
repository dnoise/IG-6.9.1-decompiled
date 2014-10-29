.class final Lcom/instagram/android/directshare/d/m;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/instagram/android/directshare/d/m;->b:Lcom/instagram/android/directshare/d/c;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/m;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter "which"

    .prologue
    .line 762
    packed-switch p2, :pswitch_data_0

    .line 771
    :goto_0
    return-void

    .line 764
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/directshare/d/m;->a:Lcom/instagram/feed/d/b;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/m;->b:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/comments/b/a;->b(Lcom/instagram/feed/d/b;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 768
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/directshare/d/m;->a:Lcom/instagram/feed/d/b;

    invoke-static {v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    goto :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
