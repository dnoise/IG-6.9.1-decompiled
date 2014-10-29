.class final Lcom/instagram/android/directshare/widget/e;
.super Ljava/lang/Object;
.source "DirectShareRecipientView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/widget/e;-><init>(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->c(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 138
    :cond_0
    if-eqz p2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->a()V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/e;->a:Lcom/instagram/android/directshare/widget/DirectShareRecipientView;

    invoke-static {v0}, Lcom/instagram/android/directshare/widget/DirectShareRecipientView;->a(Lcom/instagram/android/directshare/widget/DirectShareRecipientView;)Lcom/instagram/ui/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/f/b;->b()V

    goto :goto_0
.end method
