.class final enum Lcom/instagram/android/directshare/e/l;
.super Ljava/lang/Enum;
.source "RequestedDirectSharesFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/directshare/e/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/android/directshare/e/l;

.field public static final enum b:Lcom/instagram/android/directshare/e/l;

.field public static final enum c:Lcom/instagram/android/directshare/e/l;

.field private static final synthetic e:[Lcom/instagram/android/directshare/e/l;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    new-instance v0, Lcom/instagram/android/directshare/e/l;

    const-string v1, "IGNORE"

    sget v2, Lcom/facebook/az;->directshare_requested_direct_shares_ignore_failed:I

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/android/directshare/e/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/directshare/e/l;->a:Lcom/instagram/android/directshare/e/l;

    .line 318
    new-instance v0, Lcom/instagram/android/directshare/e/l;

    const-string v1, "ACCEPT"

    sget v2, Lcom/facebook/az;->directshare_requested_direct_shares_accept_failed:I

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/android/directshare/e/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/directshare/e/l;->b:Lcom/instagram/android/directshare/e/l;

    .line 319
    new-instance v0, Lcom/instagram/android/directshare/e/l;

    const-string v1, "IGNORE_ALL"

    sget v2, Lcom/facebook/az;->directshare_requested_direct_shares_ignore_all_failed:I

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/android/directshare/e/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instagram/android/directshare/e/l;->c:Lcom/instagram/android/directshare/e/l;

    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/directshare/e/l;

    sget-object v1, Lcom/instagram/android/directshare/e/l;->a:Lcom/instagram/android/directshare/e/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/directshare/e/l;->b:Lcom/instagram/android/directshare/e/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/directshare/e/l;->c:Lcom/instagram/android/directshare/e/l;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/android/directshare/e/l;->e:[Lcom/instagram/android/directshare/e/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 324
    iput p3, p0, Lcom/instagram/android/directshare/e/l;->d:I

    .line 325
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/directshare/e/l;
    .locals 1
    .parameter "name"

    .prologue
    .line 316
    const-class v0, Lcom/instagram/android/directshare/e/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/directshare/e/l;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/directshare/e/l;
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/instagram/android/directshare/e/l;->e:[Lcom/instagram/android/directshare/e/l;

    invoke-virtual {v0}, [Lcom/instagram/android/directshare/e/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/directshare/e/l;

    return-object v0
.end method
