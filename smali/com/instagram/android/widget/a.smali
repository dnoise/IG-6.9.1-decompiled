.class public final Lcom/instagram/android/widget/a;
.super Ljava/lang/Object;
.source "ContactsConfirmationDialog.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/Fragment;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "http://help.instagram.com/227486307449481"

    sput-object v0, Lcom/instagram/android/widget/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/instagram/android/widget/a;->b:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/instagram/android/widget/a;->c:Landroid/support/v4/app/Fragment;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/instagram/android/widget/a;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/instagram/android/fragment/fx;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fx;-><init>()V

    iget-object v0, p0, Lcom/instagram/android/widget/a;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/a;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/instagram/android/widget/a;->e:Z

    invoke-static {v0, v1, v2}, Lcom/instagram/android/fragment/fx;->a(Landroid/support/v4/app/s;Ljava/lang/String;Z)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 81
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/android/widget/a;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/widget/a;->e:Z

    .line 38
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/android/widget/a;
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/widget/a;->d:Ljava/lang/String;

    .line 33
    return-object p0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 42
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/instagram/l/b/a;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/instagram/android/widget/a;->c()V

    .line 76
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/android/widget/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->confirm_find_friends_title:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->confirm_find_friends_msg:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->learn_more:I

    sget v3, Lcom/facebook/az;->learn_more:I

    sget-object v4, Lcom/instagram/android/widget/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/instagram/ui/dialog/b;->a(IILjava/lang/String;)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->allow:I

    new-instance v3, Lcom/instagram/android/widget/d;

    invoke-direct {v3, p0, v0}, Lcom/instagram/android/widget/d;-><init>(Lcom/instagram/android/widget/a;Lcom/instagram/l/b/a;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    new-instance v2, Lcom/instagram/android/widget/b;

    invoke-direct {v2, p0}, Lcom/instagram/android/widget/b;-><init>(Lcom/instagram/android/widget/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
